import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealDischargeSummariesService implements DischargeSummariesService {
  final DioService _dioService;
  RealDischargeSummariesService(this._dioService);

  @override
  Future<DischargeSummary> getDischargeSummaryById(String id) async {
    final response = await _dioService.get(
      '/api/hospital/discharge-summaries/$id',
    );
    return DischargeSummary.fromJson(response.data);
  }

  @override
  Future<DischargeSummary> getDischargeSummariesAdmission(
    String admissionid,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/discharge-summaries/by-admission/$admissionid',
    );
    return DischargeSummary.fromJson(response.data);
  }
}

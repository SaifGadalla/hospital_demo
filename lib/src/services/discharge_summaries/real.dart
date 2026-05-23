import 'base.dart';
import '../dio_service.dart';

class RealDischargeSummariesService implements DischargeSummariesService {
  final DioService _dioService;
  RealDischargeSummariesService(this._dioService);

  @override
  Future<dynamic> getDischargeSummaryById(String id) async {
    return await _dioService.get('/api/hospital/discharge-summaries/$id');
  }

  @override
  Future<dynamic> getDischargeSummariesAdmission(String admissionid) async {
    return await _dioService.get('/api/hospital/discharge-summaries/by-admission/$admissionid');
  }

}

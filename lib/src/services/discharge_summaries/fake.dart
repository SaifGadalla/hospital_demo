import '../../models/_exports.dart';
import 'base.dart';

class FakeDischargeSummariesService implements DischargeSummariesService {
  // final List<DischargeSummary> _data = [];

  @override
  Future<DischargeSummary> getDischargeSummaryById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return DischargeSummary();
  }

  @override
  Future<DischargeSummary> getDischargeSummariesAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return DischargeSummary();
  }
}

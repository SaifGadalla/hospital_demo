import '../../models/_exports.dart';
abstract class DischargeSummariesService {
  Future<DischargeSummary> getDischargeSummaryById(String id);
  Future<DischargeSummary> getDischargeSummariesAdmission(String admissionid);
}

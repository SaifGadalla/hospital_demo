import 'base.dart';

class FakeDischargeSummariesService implements DischargeSummariesService {
  // final List<Map<String, dynamic>> _data = [];

  @override
  Future<dynamic> getDischargeSummaryById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }

  @override
  Future<dynamic> getDischargeSummariesAdmission(String admissionid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return {'id': 'mocked_id', 'status': 'success'};
  }
}

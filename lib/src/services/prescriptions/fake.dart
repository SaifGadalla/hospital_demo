import '../../models/_exports.dart';
import 'base.dart';

class FakePrescriptionsService implements PrescriptionsService {
  final List<Prescription> _data = [];

  @override
  Future<Prescription> dispensePrescription(String id, Prescription data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<Prescription> cancelPrescription(String id, Prescription data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<Prescription> getPrescriptionById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Prescription();
  }

  @override
  Future<Prescription> updatePrescription(String id, Prescription data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

  @override
  Future<Prescription> deletePrescription(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Prescription();
  }

  @override
  Future<Prescription> getPrescriptionsNumber(String prescriptionnumber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Prescription();
  }

  @override
  Future<Prescription> getPatientBypatientid(String patientid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Prescription();
  }

  @override
  Future<List<Prescription>> getPrescriptions({
    String? searchTerm,
    String? patientId,
    String? doctorId,
    String? appointmentId,
    String? status,
    DateTime? prescriptionDateFrom,
    DateTime? prescriptionDateTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }

  @override
  Future<Prescription> createPrescription(Prescription data) async {
    await Future.delayed(const Duration(milliseconds: 500));
     _data.add(data);
    return data;
  }

}

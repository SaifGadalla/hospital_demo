import '../../models/_exports.dart';
abstract class PrescriptionsService {
  Future<Prescription> dispensePrescription(String id, Prescription data);
  Future<Prescription> cancelPrescription(String id, Prescription data);
  Future<Prescription> getPrescriptionById(String id);
  Future<Prescription> updatePrescription(String id, Prescription data);
  Future<Prescription> deletePrescription(String id);
  Future<Prescription> getPrescriptionsNumber(String prescriptionnumber);
  Future<Prescription> getPatientBypatientid(String patientid);
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
  });
  Future<Prescription> createPrescription(Prescription data);
}

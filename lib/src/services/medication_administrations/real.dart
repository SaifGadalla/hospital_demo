import '../../models/_exports.dart';
import '../dio_service.dart';
import 'base.dart';

class RealMedicationAdministrationsService
    implements MedicationAdministrationsService {
  final DioService _dioService;
  RealMedicationAdministrationsService(this._dioService);

  @override
  Future<MedicationAdministration> administeredMedicationAdministration(
    String id,
    MedicationAdministration data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/medication-administrations/$id/administered',
      data: data.toJson(),
    );
    return MedicationAdministration.fromJson(response.data);
  }

  @override
  Future<MedicationAdministration> missedMedicationAdministration(
    String id,
    MedicationAdministration data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/medication-administrations/$id/missed',
      data: data.toJson(),
    );
    return MedicationAdministration.fromJson(response.data);
  }

  @override
  Future<MedicationAdministration> getMedicationAdministrationById(
    String id,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/medication-administrations/$id',
    );
    return MedicationAdministration.fromJson(response.data);
  }

  @override
  Future<MedicationAdministration> getMedicationAdministrationsAdmission(
    String admissionid,
  ) async {
    final response = await _dioService.get(
      '/api/hospital/medication-administrations/by-admission/$admissionid',
    );
    return MedicationAdministration.fromJson(response.data);
  }

  @override
  Future<MedicationAdministration> schedule(
    MedicationAdministration data,
  ) async {
    final response = await _dioService.post(
      '/api/hospital/medication-administrations/schedule',
      data: data.toJson(),
    );
    return MedicationAdministration.fromJson(response.data);
  }
}

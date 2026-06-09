import '../../models/_exports.dart';

abstract class ErService {
  Future<ErAmbulanceCall> postAmbulanceCallsByidPickup(
    String id,
    ErAmbulanceCall data, {
    String? pickupTime,
  });
  Future<ErAmbulanceCall> postAmbulanceCallsByidArrival(
    String id,
    ErAmbulanceCall data, {
    String? arrivalTime,
  });
  Future<ErAmbulanceCall> postAmbulanceCallsByidLinkErByerregistrationid(
    String id,
    String erRegistrationId,
    ErAmbulanceCall data,
  );
  Future<ErAmbulanceCall> getAmbulanceCallsByid(String id);
  Future<List<ErAmbulanceCall>?> ambulanceCalls();
  Future<List<ErAmbulanceCall>> postAmbulancecalls(ErAmbulanceCall data);
  Future<List<ErBed>> getBedsAvailable();
  Future<ErBed> postBedsByidStatus(String id, ErBed data, {String? status});
  Future<ErBed> getBedsByid(String id);
  Future<ErBed> putBedsByid(String id, ErBed data);
  Future<List<ErBed>> beds();
  Future<List<ErBed>> postBeds(ErBed data);
  Future<ErRegistration> postRegistrationsByidDisposition(
    String id,
    ErRegistration data,
  );
  Future<ErRegistration> getRegistrationsByid(String id);
  Future<ErRegistration> putRegistrationsByid(String id, ErRegistration data);
  Future<ErRegistration> deleteRegistrationsByid(String id);
  Future<ErRegistration> getRegistrationsByNumberByernumber(String ernumber);
  Future<ErRegistration> postRegistrationsRegister(ErRegistration data);
  Future<List<ErRegistration>> getRegistrations({
    String? searchTerm,
    String? patientId,
    String? status,
    String? arrivalMode,
    String? triageLevel,
    DateTime? arrivalFrom,
    DateTime? arrivalTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
  Future<ErTreatment> postTreatmentsByidComplete(String id, ErTreatment data);
  Future<ErTreatment> getTreatmentsByid(String id);
  Future<ErTreatment> getTreatmentsByRegistrationByregistrationid(
    String registrationid,
  );
  Future<ErTreatment> postTreatmentsStart(ErTreatment data);
  Future<List<ErTreatment>> treatments();
  Future<ErTriage> getTriagesByid(String id);
  Future<ErTriage> getTriagesByRegistrationByregistrationid(
    String registrationid,
  );
  Future<List<ErTriage>> triages();
  Future<List<ErTriage>> postTriages(ErTriage data);
  Future<int> getRegistrationsTotalCount({
    String? searchTerm,
    String? patientId,
    String? status,
    String? arrivalMode,
    String? triageLevel,
    DateTime? arrivalFrom,
    DateTime? arrivalTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
}

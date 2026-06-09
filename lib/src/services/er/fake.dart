import '../../models/_exports.dart';
import 'base.dart';

class FakeErService implements ErService {
  final List<ErAmbulanceCall> _ambulanceCalls = [];
  final List<ErBed> _beds = [];
  final List<ErRegistration> _registrations = [
    ErRegistration(
      patientId: '123456789',
      arrivalTime: DateTime.now(),
      chiefComplaint: 'Severe chest pain',
      status: 'Active',
      arrivalMode: 'ambulance',
      notes:
          'Patient is in critical condition and requires immediate attention.',
    ),
  ];
  final List<ErTreatment> _treatments = [];
  final List<ErTriage> _triages = [];

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidPickup(
    String id,
    ErAmbulanceCall data, {
    String? pickupTime,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _ambulanceCalls.add(data);
    return data;
  }

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidArrival(
    String id,
    ErAmbulanceCall data, {
    String? arrivalTime,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _ambulanceCalls.add(data);
    return data;
  }

  @override
  Future<ErAmbulanceCall> postAmbulanceCallsByidLinkErByerregistrationid(
    String id,
    String erRegistrationId,
    ErAmbulanceCall data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _ambulanceCalls.add(data);
    return data;
  }

  @override
  Future<ErAmbulanceCall> getAmbulanceCallsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErAmbulanceCall();
  }

  @override
  Future<List<ErAmbulanceCall>> ambulanceCalls() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _ambulanceCalls;
  }

  @override
  Future<List<ErAmbulanceCall>> postAmbulancecalls(ErAmbulanceCall data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _ambulanceCalls.add(data);
    return _ambulanceCalls;
  }

  @override
  Future<List<ErBed>> getBedsAvailable() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _beds.where((bed) => bed.status == 'available').toList();
  }

  @override
  Future<ErBed> postBedsByidStatus(
    String id,
    ErBed data, {
    String? status,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _beds.add(data);
    return data;
  }

  @override
  Future<ErBed> getBedsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErBed();
  }

  @override
  Future<ErBed> putBedsByid(String id, ErBed data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _beds.add(data);
    return data;
  }

  @override
  Future<List<ErBed>> beds() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _beds;
  }

  @override
  Future<List<ErBed>> postBeds(ErBed data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _beds.add(data);
    return _beds;
  }

  @override
  Future<ErRegistration> postRegistrationsByidDisposition(
    String id,
    ErRegistration data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _registrations.add(data);
    return data;
  }

  @override
  Future<ErRegistration> getRegistrationsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErRegistration();
  }

  @override
  Future<ErRegistration> putRegistrationsByid(
    String id,
    ErRegistration data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _registrations.add(data);
    return data;
  }

  @override
  Future<ErRegistration> deleteRegistrationsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErRegistration();
  }

  @override
  Future<ErRegistration> getRegistrationsByNumberByernumber(
    String ernumber,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErRegistration();
  }

  @override
  Future<ErRegistration> postRegistrationsRegister(ErRegistration data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _registrations.add(data);
    return data;
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _registrations;
  }

  @override
  Future<ErTreatment> postTreatmentsByidComplete(
    String id,
    ErTreatment data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _treatments.add(data);
    return data;
  }

  @override
  Future<ErTreatment> getTreatmentsByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErTreatment();
  }

  @override
  Future<ErTreatment> getTreatmentsByRegistrationByregistrationid(
    String registrationid,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErTreatment();
  }

  @override
  Future<ErTreatment> postTreatmentsStart(ErTreatment data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _treatments.add(data);
    return data;
  }

  @override
  Future<List<ErTreatment>> treatments() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _treatments;
  }

  @override
  Future<ErTriage> getTriagesByid(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErTriage();
  }

  @override
  Future<ErTriage> getTriagesByRegistrationByregistrationid(
    String registrationid,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ErTriage();
  }

  @override
  Future<List<ErTriage>> triages() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _triages;
  }

  @override
  Future<List<ErTriage>> postTriages(ErTriage data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _triages.add(data);
    return _triages;
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _registrations.length;
  }
}

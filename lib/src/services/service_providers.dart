import '../../common.dart';

class Env {
  static const bool isDev = bool.fromEnvironment('isDev', defaultValue: true);
  static const String baseUrl = String.fromEnvironment(
    'baseUrl',
    defaultValue: 'https://tesseroapi.runasp.net',
  );
  static const String tenantId = String.fromEnvironment(
    'tenantId',
    defaultValue: '00000000-0000-0000-0000-000000000001',
  );
}

final dioProvider = Provider<DioService>((ref) {
  return DioService(baseUrl: Env.baseUrl, tenantId: Env.tenantId);
});

final admissionsServiceProvider = Provider<AdmissionsService>((ref) {
  return Env.isDev
      ? FakeAdmissionsService()
      : RealAdmissionsService(ref.watch(dioProvider));
});

final appointmentsServiceProvider = Provider<AppointmentsService>((ref) {
  return Env.isDev
      ? FakeAppointmentsService()
      : RealAppointmentsService(ref.watch(dioProvider));
});

final bedsServiceProvider = Provider<BedsService>((ref) {
  return Env.isDev ? FakeBedsService() : RealBedsService(ref.watch(dioProvider));
});

final dischargeSummariesServiceProvider = Provider<DischargeSummariesService>((
  ref,
) {
  return Env.isDev
      ? FakeDischargeSummariesService()
      : RealDischargeSummariesService(ref.watch(dioProvider));
});

final erServiceProvider = Provider<ErService>((ref) {
  return Env.isDev ? FakeErService() : RealErService(ref.watch(dioProvider));
});

final insuranceServiceProvider = Provider<InsuranceService>((ref) {
  return Env.isDev
      ? FakeInsuranceService()
      : RealInsuranceService(ref.watch(dioProvider));
});

final labOrderTestsServiceProvider = Provider<LabOrderTestsService>((ref) {
  return Env.isDev
      ? FakeLabOrderTestsService()
      : RealLabOrderTestsService(ref.watch(dioProvider));
});

final labOrdersServiceProvider = Provider<LabOrdersService>((ref) {
  return Env.isDev
      ? FakeLabOrdersService()
      : RealLabOrdersService(ref.watch(dioProvider));
});

final medicalRecordsServiceProvider = Provider<MedicalRecordsService>((ref) {
  return Env.isDev
      ? FakeMedicalRecordsService()
      : RealMedicalRecordsService(ref.watch(dioProvider));
});

final medicationAdministrationsServiceProvider =
    Provider<MedicationAdministrationsService>((ref) {
      return Env.isDev
          ? FakeMedicationAdministrationsService()
          : RealMedicationAdministrationsService(ref.watch(dioProvider));
    });

final nursingNotesServiceProvider = Provider<NursingNotesService>((ref) {
  return Env.isDev
      ? FakeNursingNotesService()
      : RealNursingNotesService(ref.watch(dioProvider));
});

final operatingRoomsServiceProvider = Provider<OperatingRoomsService>((ref) {
  return Env.isDev
      ? FakeOperatingRoomsService()
      : RealOperatingRoomsService(ref.watch(dioProvider));
});

final patientsServiceProvider = Provider<PatientsService>((ref) {
  return Env.isDev
      ? FakePatientsService()
      : RealPatientsService(ref.watch(dioProvider));
});

final prescriptionItemsServiceProvider = Provider<PrescriptionItemsService>((
  ref,
) {
  return Env.isDev
      ? FakePrescriptionItemsService()
      : RealPrescriptionItemsService(ref.watch(dioProvider));
});

final prescriptionsServiceProvider = Provider<PrescriptionsService>((ref) {
  return Env.isDev
      ? FakePrescriptionsService()
      : RealPrescriptionsService(ref.watch(dioProvider));
});

final roomsServiceProvider = Provider<RoomsService>((ref) {
  return Env.isDev ? FakeRoomsService() : RealRoomsService(ref.watch(dioProvider));
});

final surgeryBookingsServiceProvider = Provider<SurgeryBookingsService>((ref) {
  return Env.isDev
      ? FakeSurgeryBookingsService()
      : RealSurgeryBookingsService(ref.watch(dioProvider));
});

final surgicalProceduresServiceProvider = Provider<SurgicalProceduresService>((
  ref,
) {
  return Env.isDev
      ? FakeSurgicalProceduresService()
      : RealSurgicalProceduresService(ref.watch(dioProvider));
});

final wardsServiceProvider = Provider<WardsService>((ref) {
  return Env.isDev ? FakeWardsService() : RealWardsService(ref.watch(dioProvider));
});

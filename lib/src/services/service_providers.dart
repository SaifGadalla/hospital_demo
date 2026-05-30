import '../../common.dart';

const bool isDev = bool.fromEnvironment('isDev', defaultValue: true);

// It's good practice to strongly type your Provider
final dioProvider = Provider<DioService>((ref) {
  return DioService();
});

final admissionsServiceProvider = Provider<AdmissionsService>((ref) {
  return isDev
      ? FakeAdmissionsService()
      : RealAdmissionsService(ref.watch(dioProvider));
});

final appointmentsServiceProvider = Provider<AppointmentsService>((ref) {
  return isDev
      ? FakeAppointmentsService()
      : RealAppointmentsService(ref.watch(dioProvider));
});

final bedsServiceProvider = Provider<BedsService>((ref) {
  return isDev ? FakeBedsService() : RealBedsService(ref.watch(dioProvider));
});

final dischargeSummariesServiceProvider = Provider<DischargeSummariesService>((
  ref,
) {
  return isDev
      ? FakeDischargeSummariesService()
      : RealDischargeSummariesService(ref.watch(dioProvider));
});

final erServiceProvider = Provider<ErService>((ref) {
  return isDev ? FakeErService() : RealErService(ref.watch(dioProvider));
});

final insuranceServiceProvider = Provider<InsuranceService>((ref) {
  return isDev
      ? FakeInsuranceService()
      : RealInsuranceService(ref.watch(dioProvider));
});

final labOrderTestsServiceProvider = Provider<LabOrderTestsService>((ref) {
  return isDev
      ? FakeLabOrderTestsService()
      : RealLabOrderTestsService(ref.watch(dioProvider));
});

final labOrdersServiceProvider = Provider<LabOrdersService>((ref) {
  return isDev
      ? FakeLabOrdersService()
      : RealLabOrdersService(ref.watch(dioProvider));
});

final medicalRecordsServiceProvider = Provider<MedicalRecordsService>((ref) {
  return isDev
      ? FakeMedicalRecordsService()
      : RealMedicalRecordsService(ref.watch(dioProvider));
});

final medicationAdministrationsServiceProvider =
    Provider<MedicationAdministrationsService>((ref) {
      return isDev
          ? FakeMedicationAdministrationsService()
          : RealMedicationAdministrationsService(ref.watch(dioProvider));
    });

final nursingNotesServiceProvider = Provider<NursingNotesService>((ref) {
  return isDev
      ? FakeNursingNotesService()
      : RealNursingNotesService(ref.watch(dioProvider));
});

final operatingRoomsServiceProvider = Provider<OperatingRoomsService>((ref) {
  return isDev
      ? FakeOperatingRoomsService()
      : RealOperatingRoomsService(ref.watch(dioProvider));
});

final patientsServiceProvider = Provider<PatientsService>((ref) {
  return isDev
      ? FakePatientsService()
      : RealPatientsService(ref.watch(dioProvider));
});

final prescriptionItemsServiceProvider = Provider<PrescriptionItemsService>((
  ref,
) {
  return isDev
      ? FakePrescriptionItemsService()
      : RealPrescriptionItemsService(ref.watch(dioProvider));
});

final prescriptionsServiceProvider = Provider<PrescriptionsService>((ref) {
  return isDev
      ? FakePrescriptionsService()
      : RealPrescriptionsService(ref.watch(dioProvider));
});

final roomsServiceProvider = Provider<RoomsService>((ref) {
  return isDev ? FakeRoomsService() : RealRoomsService(ref.watch(dioProvider));
});

final surgeryBookingsServiceProvider = Provider<SurgeryBookingsService>((ref) {
  return isDev
      ? FakeSurgeryBookingsService()
      : RealSurgeryBookingsService(ref.watch(dioProvider));
});

final surgicalProceduresServiceProvider = Provider<SurgicalProceduresService>((
  ref,
) {
  return isDev
      ? FakeSurgicalProceduresService()
      : RealSurgicalProceduresService(ref.watch(dioProvider));
});

final wardsServiceProvider = Provider<WardsService>((ref) {
  return isDev ? FakeWardsService() : RealWardsService(ref.watch(dioProvider));
});

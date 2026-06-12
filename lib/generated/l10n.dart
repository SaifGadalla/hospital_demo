// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Not Triaged`
  String get utils_status_notTriaged {
    return Intl.message(
      'Not Triaged',
      name: 'utils_status_notTriaged',
      desc: '',
      args: [],
    );
  }

  /// `ESI {triageLevel}`
  String utils_triage_esiLevel(String triageLevel) {
    return Intl.message(
      'ESI $triageLevel',
      name: 'utils_triage_esiLevel',
      desc: '',
      args: [triageLevel],
    );
  }

  /// `In treatment`
  String get utils_status_inTreatment {
    return Intl.message(
      'In treatment',
      name: 'utils_status_inTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get utils_status_waiting {
    return Intl.message(
      'Waiting',
      name: 'utils_status_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get utils_status_cancelled {
    return Intl.message(
      'Cancelled',
      name: 'utils_status_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get utils_status_completed {
    return Intl.message(
      'Completed',
      name: 'utils_status_completed',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get utils_status_closed {
    return Intl.message(
      'Closed',
      name: 'utils_status_closed',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get utils_status_unknown {
    return Intl.message(
      'Unknown',
      name: 'utils_status_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Appointments`
  String get appointments_view_title {
    return Intl.message(
      'Appointments',
      name: 'appointments_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Schedule, check-in, and complete patient visits.`
  String get appointments_view_description {
    return Intl.message(
      'Schedule, check-in, and complete patient visits.',
      name: 'appointments_view_description',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get appointments_view_schedule {
    return Intl.message(
      'Schedule',
      name: 'appointments_view_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Board`
  String get appointments_view_board {
    return Intl.message(
      'Board',
      name: 'appointments_view_board',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get appointments_view_list {
    return Intl.message(
      'List',
      name: 'appointments_view_list',
      desc: '',
      args: [],
    );
  }

  /// `All types`
  String get appointments_view_allTypes {
    return Intl.message(
      'All types',
      name: 'appointments_view_allTypes',
      desc: '',
      args: [],
    );
  }

  /// `Consultation`
  String get appointments_view_consultation {
    return Intl.message(
      'Consultation',
      name: 'appointments_view_consultation',
      desc: '',
      args: [],
    );
  }

  /// `Follow-up`
  String get appointments_view_followUp {
    return Intl.message(
      'Follow-up',
      name: 'appointments_view_followUp',
      desc: '',
      args: [],
    );
  }

  /// `Procedure`
  String get appointments_view_procedure {
    return Intl.message(
      'Procedure',
      name: 'appointments_view_procedure',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get appointments_view_clear {
    return Intl.message(
      'Clear',
      name: 'appointments_view_clear',
      desc: '',
      args: [],
    );
  }

  /// `Appt #`
  String get appointments_view_apptNumber {
    return Intl.message(
      'Appt #',
      name: 'appointments_view_apptNumber',
      desc: '',
      args: [],
    );
  }

  /// `Date / time`
  String get appointments_view_dateTime {
    return Intl.message(
      'Date / time',
      name: 'appointments_view_dateTime',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get appointments_view_patient {
    return Intl.message(
      'Patient',
      name: 'appointments_view_patient',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get appointments_view_type {
    return Intl.message(
      'Type',
      name: 'appointments_view_type',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get appointments_view_doctor {
    return Intl.message(
      'Doctor',
      name: 'appointments_view_doctor',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get appointments_view_status {
    return Intl.message(
      'Status',
      name: 'appointments_view_status',
      desc: '',
      args: [],
    );
  }

  /// `Add Appointment`
  String get appointments_add_title {
    return Intl.message(
      'Add Appointment',
      name: 'appointments_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get appointments_add_patient {
    return Intl.message(
      'Patient',
      name: 'appointments_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Appointment Type`
  String get appointments_add_type {
    return Intl.message(
      'Appointment Type',
      name: 'appointments_add_type',
      desc: '',
      args: [],
    );
  }

  /// `Consultation`
  String get appointments_add_consultation {
    return Intl.message(
      'Consultation',
      name: 'appointments_add_consultation',
      desc: '',
      args: [],
    );
  }

  /// `Follow-up`
  String get appointments_add_followUp {
    return Intl.message(
      'Follow-up',
      name: 'appointments_add_followUp',
      desc: '',
      args: [],
    );
  }

  /// `Procedure`
  String get appointments_add_procedure {
    return Intl.message(
      'Procedure',
      name: 'appointments_add_procedure',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get appointments_add_notes {
    return Intl.message(
      'Notes',
      name: 'appointments_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get appointments_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'appointments_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get appointments_add_save {
    return Intl.message(
      'Save',
      name: 'appointments_add_save',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard_view_title {
    return Intl.message(
      'Dashboard',
      name: 'dashboard_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Live overview across the patient lifecycle, ER, IPD, OR, and revenue cycle.`
  String get dashboard_view_description {
    return Intl.message(
      'Live overview across the patient lifecycle, ER, IPD, OR, and revenue cycle.',
      name: 'dashboard_view_description',
      desc: '',
      args: [],
    );
  }

  /// `New Appointment`
  String get dashboard_view_newAppointment {
    return Intl.message(
      'New Appointment',
      name: 'dashboard_view_newAppointment',
      desc: '',
      args: [],
    );
  }

  /// `View Patients`
  String get dashboard_view_viewPatients {
    return Intl.message(
      'View Patients',
      name: 'dashboard_view_viewPatients',
      desc: '',
      args: [],
    );
  }

  /// `Total Patients`
  String get dashboard_view_totalPatients {
    return Intl.message(
      'Total Patients',
      name: 'dashboard_view_totalPatients',
      desc: '',
      args: [],
    );
  }

  /// `Today appointments`
  String get dashboard_view_todayAppointments {
    return Intl.message(
      'Today appointments',
      name: 'dashboard_view_todayAppointments',
      desc: '',
      args: [],
    );
  }

  /// `{totalAppointments} on file`
  String dashboard_view_totalAppointmentsOnFile(String totalAppointments) {
    return Intl.message(
      '$totalAppointments on file',
      name: 'dashboard_view_totalAppointmentsOnFile',
      desc: '',
      args: [totalAppointments],
    );
  }

  /// `ER active`
  String get dashboard_view_erActive {
    return Intl.message(
      'ER active',
      name: 'dashboard_view_erActive',
      desc: '',
      args: [],
    );
  }

  /// `{totalERToday} total today`
  String dashboard_view_totalErToday(String totalERToday) {
    return Intl.message(
      '$totalERToday total today',
      name: 'dashboard_view_totalErToday',
      desc: '',
      args: [totalERToday],
    );
  }

  /// `Beds free`
  String get dashboard_view_bedsFree {
    return Intl.message(
      'Beds free',
      name: 'dashboard_view_bedsFree',
      desc: '',
      args: [],
    );
  }

  /// `Across all wards`
  String get dashboard_view_acrossAllWards {
    return Intl.message(
      'Across all wards',
      name: 'dashboard_view_acrossAllWards',
      desc: '',
      args: [],
    );
  }

  /// `Today's appointments`
  String get dashboard_view_todaysAppointmentsCard {
    return Intl.message(
      'Today\'s appointments',
      name: 'dashboard_view_todaysAppointmentsCard',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get dashboard_view_viewAll {
    return Intl.message(
      'View All',
      name: 'dashboard_view_viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get dashboard_view_columnTime {
    return Intl.message(
      'Time',
      name: 'dashboard_view_columnTime',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get dashboard_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'dashboard_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get dashboard_view_columnType {
    return Intl.message(
      'Type',
      name: 'dashboard_view_columnType',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get dashboard_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'dashboard_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Active ER patients`
  String get dashboard_view_activeErCard {
    return Intl.message(
      'Active ER patients',
      name: 'dashboard_view_activeErCard',
      desc: '',
      args: [],
    );
  }

  /// `Open ER`
  String get dashboard_view_openEr {
    return Intl.message(
      'Open ER',
      name: 'dashboard_view_openEr',
      desc: '',
      args: [],
    );
  }

  /// `Call #`
  String get dashboard_view_columnCall {
    return Intl.message(
      'Call #',
      name: 'dashboard_view_columnCall',
      desc: '',
      args: [],
    );
  }

  /// `Triage`
  String get dashboard_view_columnTriage {
    return Intl.message(
      'Triage',
      name: 'dashboard_view_columnTriage',
      desc: '',
      args: [],
    );
  }

  /// `Bed occupancy`
  String get dashboard_view_bedOccupancyCard {
    return Intl.message(
      'Bed occupancy',
      name: 'dashboard_view_bedOccupancyCard',
      desc: '',
      args: [],
    );
  }

  /// `Manage IPD`
  String get dashboard_view_manageIpd {
    return Intl.message(
      'Manage IPD',
      name: 'dashboard_view_manageIpd',
      desc: '',
      args: [],
    );
  }

  /// `Insurance claims pipeline`
  String get dashboard_view_insuranceClaimsCard {
    return Intl.message(
      'Insurance claims pipeline',
      name: 'dashboard_view_insuranceClaimsCard',
      desc: '',
      args: [],
    );
  }

  /// `Manage claims`
  String get dashboard_view_manageClaims {
    return Intl.message(
      'Manage claims',
      name: 'dashboard_view_manageClaims',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get emergency_view_title {
    return Intl.message(
      'Emergency',
      name: 'emergency_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Live triage board with ESI levels, treatment, and disposition.`
  String get emergency_view_description {
    return Intl.message(
      'Live triage board with ESI levels, treatment, and disposition.',
      name: 'emergency_view_description',
      desc: '',
      args: [],
    );
  }

  /// `Register arrival`
  String get emergency_view_registerArrival {
    return Intl.message(
      'Register arrival',
      name: 'emergency_view_registerArrival',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance call logging coming soon`
  String get emergency_view_ambulanceToast {
    return Intl.message(
      'Ambulance call logging coming soon',
      name: 'emergency_view_ambulanceToast',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance call`
  String get emergency_view_ambulanceCall {
    return Intl.message(
      'Ambulance call',
      name: 'emergency_view_ambulanceCall',
      desc: '',
      args: [],
    );
  }

  /// `Active calls`
  String get emergency_view_activeCalls {
    return Intl.message(
      'Active calls',
      name: 'emergency_view_activeCalls',
      desc: '',
      args: [],
    );
  }

  /// `Today total`
  String get emergency_view_todayTotal {
    return Intl.message(
      'Today total',
      name: 'emergency_view_todayTotal',
      desc: '',
      args: [],
    );
  }

  /// `Not triaged`
  String get emergency_view_notTriaged {
    return Intl.message(
      'Not triaged',
      name: 'emergency_view_notTriaged',
      desc: '',
      args: [],
    );
  }

  /// `Level-1 (RESUS)`
  String get emergency_view_level1Resus {
    return Intl.message(
      'Level-1 (RESUS)',
      name: 'emergency_view_level1Resus',
      desc: '',
      args: [],
    );
  }

  /// `Recent ambulance calls`
  String get emergency_view_recentAmbulanceCalls {
    return Intl.message(
      'Recent ambulance calls',
      name: 'emergency_view_recentAmbulanceCalls',
      desc: '',
      args: [],
    );
  }

  /// `Call #`
  String get emergency_view_columnCallNum {
    return Intl.message(
      'Call #',
      name: 'emergency_view_columnCallNum',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get emergency_view_columnTime {
    return Intl.message(
      'Time',
      name: 'emergency_view_columnTime',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get emergency_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'emergency_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Location`
  String get emergency_view_columnPickup {
    return Intl.message(
      'Pickup Location',
      name: 'emergency_view_columnPickup',
      desc: '',
      args: [],
    );
  }

  /// `Incident`
  String get emergency_view_columnIncident {
    return Intl.message(
      'Incident',
      name: 'emergency_view_columnIncident',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get emergency_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'emergency_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get emergency_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'emergency_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `En route`
  String get emergency_view_statusEnRoute {
    return Intl.message(
      'En route',
      name: 'emergency_view_statusEnRoute',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get emergency_view_viewAction {
    return Intl.message(
      'View',
      name: 'emergency_view_viewAction',
      desc: '',
      args: [],
    );
  }

  /// `Update Status`
  String get emergency_view_updateStatusAction {
    return Intl.message(
      'Update Status',
      name: 'emergency_view_updateStatusAction',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance Call AC-{number}`
  String emergency_view_callTitle(int number) {
    return Intl.message(
      'Ambulance Call AC-$number',
      name: 'emergency_view_callTitle',
      desc: '',
      args: [number],
    );
  }

  /// `Call Time`
  String get emergency_view_callTime {
    return Intl.message(
      'Call Time',
      name: 'emergency_view_callTime',
      desc: '',
      args: [],
    );
  }

  /// `Incident Type`
  String get emergency_view_incidentType {
    return Intl.message(
      'Incident Type',
      name: 'emergency_view_incidentType',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get emergency_view_notes {
    return Intl.message(
      'Notes',
      name: 'emergency_view_notes',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get emergency_view_close {
    return Intl.message(
      'Close',
      name: 'emergency_view_close',
      desc: '',
      args: [],
    );
  }

  /// `Update Ambulance Call Status`
  String get emergency_view_updateStatusTitle {
    return Intl.message(
      'Update Ambulance Call Status',
      name: 'emergency_view_updateStatusTitle',
      desc: '',
      args: [],
    );
  }

  /// `Patient: {patientName}`
  String emergency_view_patientNameDisplay(String patientName) {
    return Intl.message(
      'Patient: $patientName',
      name: 'emergency_view_patientNameDisplay',
      desc: '',
      args: [patientName],
    );
  }

  /// `Dispatched`
  String get emergency_view_statusDispatched {
    return Intl.message(
      'Dispatched',
      name: 'emergency_view_statusDispatched',
      desc: '',
      args: [],
    );
  }

  /// `On scene`
  String get emergency_view_statusOnScene {
    return Intl.message(
      'On scene',
      name: 'emergency_view_statusOnScene',
      desc: '',
      args: [],
    );
  }

  /// `Transporting`
  String get emergency_view_statusTransporting {
    return Intl.message(
      'Transporting',
      name: 'emergency_view_statusTransporting',
      desc: '',
      args: [],
    );
  }

  /// `Arrived at hospital`
  String get emergency_view_statusArrived {
    return Intl.message(
      'Arrived at hospital',
      name: 'emergency_view_statusArrived',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get emergency_view_statusCompleted {
    return Intl.message(
      'Completed',
      name: 'emergency_view_statusCompleted',
      desc: '',
      args: [],
    );
  }

  /// `Status updated to: {status}`
  String emergency_view_statusUpdatedToast(String status) {
    return Intl.message(
      'Status updated to: $status',
      name: 'emergency_view_statusUpdatedToast',
      desc: '',
      args: [status],
    );
  }

  /// `Cancel`
  String get emergency_view_cancel {
    return Intl.message(
      'Cancel',
      name: 'emergency_view_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Register ER Arrival`
  String get emergency_add_title {
    return Intl.message(
      'Register ER Arrival',
      name: 'emergency_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get emergency_add_patient {
    return Intl.message(
      'Patient',
      name: 'emergency_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Mode`
  String get emergency_add_arrivalMode {
    return Intl.message(
      'Arrival Mode',
      name: 'emergency_add_arrivalMode',
      desc: '',
      args: [],
    );
  }

  /// `Walk-in`
  String get emergency_add_walkIn {
    return Intl.message(
      'Walk-in',
      name: 'emergency_add_walkIn',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance`
  String get emergency_add_ambulance {
    return Intl.message(
      'Ambulance',
      name: 'emergency_add_ambulance',
      desc: '',
      args: [],
    );
  }

  /// `Helicopter`
  String get emergency_add_helicopter {
    return Intl.message(
      'Helicopter',
      name: 'emergency_add_helicopter',
      desc: '',
      args: [],
    );
  }

  /// `Police`
  String get emergency_add_police {
    return Intl.message(
      'Police',
      name: 'emergency_add_police',
      desc: '',
      args: [],
    );
  }

  /// `Chief Complaint`
  String get emergency_add_chiefComplaint {
    return Intl.message(
      'Chief Complaint',
      name: 'emergency_add_chiefComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Triage Level`
  String get emergency_add_triageLevel {
    return Intl.message(
      'Triage Level',
      name: 'emergency_add_triageLevel',
      desc: '',
      args: [],
    );
  }

  /// `1 - Resuscitation`
  String get emergency_add_level1 {
    return Intl.message(
      '1 - Resuscitation',
      name: 'emergency_add_level1',
      desc: '',
      args: [],
    );
  }

  /// `2 - Emergent`
  String get emergency_add_level2 {
    return Intl.message(
      '2 - Emergent',
      name: 'emergency_add_level2',
      desc: '',
      args: [],
    );
  }

  /// `3 - Urgent`
  String get emergency_add_level3 {
    return Intl.message(
      '3 - Urgent',
      name: 'emergency_add_level3',
      desc: '',
      args: [],
    );
  }

  /// `4 - Less Urgent`
  String get emergency_add_level4 {
    return Intl.message(
      '4 - Less Urgent',
      name: 'emergency_add_level4',
      desc: '',
      args: [],
    );
  }

  /// `5 - Non-Urgent`
  String get emergency_add_level5 {
    return Intl.message(
      '5 - Non-Urgent',
      name: 'emergency_add_level5',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get emergency_add_notes {
    return Intl.message(
      'Notes',
      name: 'emergency_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get emergency_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'emergency_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get emergency_add_save {
    return Intl.message('Save', name: 'emergency_add_save', desc: '', args: []);
  }

  /// `Inpatient (IPD)`
  String get inpatient_view_title {
    return Intl.message(
      'Inpatient (IPD)',
      name: 'inpatient_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Wards, beds, admissions, transfers, and discharges.`
  String get inpatient_view_description {
    return Intl.message(
      'Wards, beds, admissions, transfers, and discharges.',
      name: 'inpatient_view_description',
      desc: '',
      args: [],
    );
  }

  /// `Admit`
  String get inpatient_view_admit {
    return Intl.message(
      'Admit',
      name: 'inpatient_view_admit',
      desc: '',
      args: [],
    );
  }

  /// `Active admissions`
  String get inpatient_view_activeAdmissions {
    return Intl.message(
      'Active admissions',
      name: 'inpatient_view_activeAdmissions',
      desc: '',
      args: [],
    );
  }

  /// `Beds occupied`
  String get inpatient_view_bedsOccupied {
    return Intl.message(
      'Beds occupied',
      name: 'inpatient_view_bedsOccupied',
      desc: '',
      args: [],
    );
  }

  /// `Beds available`
  String get inpatient_view_bedsAvailable {
    return Intl.message(
      'Beds available',
      name: 'inpatient_view_bedsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Occupancy rate`
  String get inpatient_view_occupancyRate {
    return Intl.message(
      'Occupancy rate',
      name: 'inpatient_view_occupancyRate',
      desc: '',
      args: [],
    );
  }

  /// `Ward bed map`
  String get inpatient_view_wardBedMap {
    return Intl.message(
      'Ward bed map',
      name: 'inpatient_view_wardBedMap',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get inpatient_view_available {
    return Intl.message(
      'Available',
      name: 'inpatient_view_available',
      desc: '',
      args: [],
    );
  }

  /// `Occupied`
  String get inpatient_view_occupied {
    return Intl.message(
      'Occupied',
      name: 'inpatient_view_occupied',
      desc: '',
      args: [],
    );
  }

  /// `Cleaning`
  String get inpatient_view_cleaning {
    return Intl.message(
      'Cleaning',
      name: 'inpatient_view_cleaning',
      desc: '',
      args: [],
    );
  }

  /// `Blocked`
  String get inpatient_view_blocked {
    return Intl.message(
      'Blocked',
      name: 'inpatient_view_blocked',
      desc: '',
      args: [],
    );
  }

  /// `Ward filter coming soon`
  String get inpatient_view_wardFilterToast {
    return Intl.message(
      'Ward filter coming soon',
      name: 'inpatient_view_wardFilterToast',
      desc: '',
      args: [],
    );
  }

  /// `Filter by Ward`
  String get inpatient_view_filterByWard {
    return Intl.message(
      'Filter by Ward',
      name: 'inpatient_view_filterByWard',
      desc: '',
      args: [],
    );
  }

  /// `Date filter coming soon`
  String get inpatient_view_dateFilterToast {
    return Intl.message(
      'Date filter coming soon',
      name: 'inpatient_view_dateFilterToast',
      desc: '',
      args: [],
    );
  }

  /// `Filter by Date`
  String get inpatient_view_filterByDate {
    return Intl.message(
      'Filter by Date',
      name: 'inpatient_view_filterByDate',
      desc: '',
      args: [],
    );
  }

  /// `Admission #`
  String get inpatient_view_columnAdmission {
    return Intl.message(
      'Admission #',
      name: 'inpatient_view_columnAdmission',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get inpatient_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'inpatient_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Bed`
  String get inpatient_view_columnBed {
    return Intl.message(
      'Bed',
      name: 'inpatient_view_columnBed',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis`
  String get inpatient_view_columnDiagnosis {
    return Intl.message(
      'Diagnosis',
      name: 'inpatient_view_columnDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Date Admitted`
  String get inpatient_view_columnDateAdmitted {
    return Intl.message(
      'Date Admitted',
      name: 'inpatient_view_columnDateAdmitted',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get inpatient_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'inpatient_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get inpatient_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'inpatient_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get inpatient_view_transferAction {
    return Intl.message(
      'Transfer',
      name: 'inpatient_view_transferAction',
      desc: '',
      args: [],
    );
  }

  /// `Discharge`
  String get inpatient_view_dischargeAction {
    return Intl.message(
      'Discharge',
      name: 'inpatient_view_dischargeAction',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Discharge`
  String get inpatient_view_confirmDischargeTitle {
    return Intl.message(
      'Confirm Discharge',
      name: 'inpatient_view_confirmDischargeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to discharge {patientName}?`
  String inpatient_view_confirmDischargeMsg(String patientName) {
    return Intl.message(
      'Are you sure you want to discharge $patientName?',
      name: 'inpatient_view_confirmDischargeMsg',
      desc: '',
      args: [patientName],
    );
  }

  /// `Cancel`
  String get inpatient_view_cancel {
    return Intl.message(
      'Cancel',
      name: 'inpatient_view_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Patient`
  String get inpatient_view_transferTitle {
    return Intl.message(
      'Transfer Patient',
      name: 'inpatient_view_transferTitle',
      desc: '',
      args: [],
    );
  }

  /// `Transfer {patientName} to a new bed.`
  String inpatient_view_transferMsg(String patientName) {
    return Intl.message(
      'Transfer $patientName to a new bed.',
      name: 'inpatient_view_transferMsg',
      desc: '',
      args: [patientName],
    );
  }

  /// `Reason for transfer`
  String get inpatient_view_reasonForTransfer {
    return Intl.message(
      'Reason for transfer',
      name: 'inpatient_view_reasonForTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Admit Patient`
  String get inpatient_add_title {
    return Intl.message(
      'Admit Patient',
      name: 'inpatient_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get inpatient_add_patient {
    return Intl.message(
      'Patient',
      name: 'inpatient_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Admission Type`
  String get inpatient_add_admissionType {
    return Intl.message(
      'Admission Type',
      name: 'inpatient_add_admissionType',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get inpatient_add_emergency {
    return Intl.message(
      'Emergency',
      name: 'inpatient_add_emergency',
      desc: '',
      args: [],
    );
  }

  /// `Elective`
  String get inpatient_add_elective {
    return Intl.message(
      'Elective',
      name: 'inpatient_add_elective',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get inpatient_add_transfer {
    return Intl.message(
      'Transfer',
      name: 'inpatient_add_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Admission Diagnosis`
  String get inpatient_add_admissionDiagnosis {
    return Intl.message(
      'Admission Diagnosis',
      name: 'inpatient_add_admissionDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Ward`
  String get inpatient_add_ward {
    return Intl.message('Ward', name: 'inpatient_add_ward', desc: '', args: []);
  }

  /// `Bed`
  String get inpatient_add_bed {
    return Intl.message('Bed', name: 'inpatient_add_bed', desc: '', args: []);
  }

  /// `Notes`
  String get inpatient_add_notes {
    return Intl.message(
      'Notes',
      name: 'inpatient_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get inpatient_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'inpatient_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get inpatient_add_save {
    return Intl.message('Save', name: 'inpatient_add_save', desc: '', args: []);
  }

  /// `Insurance & Claims`
  String get insurance_view_title {
    return Intl.message(
      'Insurance & Claims',
      name: 'insurance_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Plans, claims pipeline, pre-authorizations.`
  String get insurance_view_description {
    return Intl.message(
      'Plans, claims pipeline, pre-authorizations.',
      name: 'insurance_view_description',
      desc: '',
      args: [],
    );
  }

  /// `New Claim`
  String get insurance_view_newClaim {
    return Intl.message(
      'New Claim',
      name: 'insurance_view_newClaim',
      desc: '',
      args: [],
    );
  }

  /// `Total Claims`
  String get insurance_view_totalClaims {
    return Intl.message(
      'Total Claims',
      name: 'insurance_view_totalClaims',
      desc: '',
      args: [],
    );
  }

  /// `Approved/Paid`
  String get insurance_view_approvedPaid {
    return Intl.message(
      'Approved/Paid',
      name: 'insurance_view_approvedPaid',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get insurance_view_rejected {
    return Intl.message(
      'Rejected',
      name: 'insurance_view_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Total Claimed`
  String get insurance_view_totalClaimed {
    return Intl.message(
      'Total Claimed',
      name: 'insurance_view_totalClaimed',
      desc: '',
      args: [],
    );
  }

  /// `Claims`
  String get insurance_view_claimsTab {
    return Intl.message(
      'Claims',
      name: 'insurance_view_claimsTab',
      desc: '',
      args: [],
    );
  }

  /// `Pre-auths`
  String get insurance_view_preAuthsTab {
    return Intl.message(
      'Pre-auths',
      name: 'insurance_view_preAuthsTab',
      desc: '',
      args: [],
    );
  }

  /// `Plans`
  String get insurance_view_plansTab {
    return Intl.message(
      'Plans',
      name: 'insurance_view_plansTab',
      desc: '',
      args: [],
    );
  }

  /// `Claim #`
  String get insurance_view_columnClaim {
    return Intl.message(
      'Claim #',
      name: 'insurance_view_columnClaim',
      desc: '',
      args: [],
    );
  }

  /// `Service Date`
  String get insurance_view_columnServiceDate {
    return Intl.message(
      'Service Date',
      name: 'insurance_view_columnServiceDate',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get insurance_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'insurance_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Plan`
  String get insurance_view_columnPlan {
    return Intl.message(
      'Plan',
      name: 'insurance_view_columnPlan',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get insurance_view_columnTotal {
    return Intl.message(
      'Total',
      name: 'insurance_view_columnTotal',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get insurance_view_columnPaid {
    return Intl.message(
      'Paid',
      name: 'insurance_view_columnPaid',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get insurance_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'insurance_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get insurance_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'insurance_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get insurance_view_viewAction {
    return Intl.message(
      'View',
      name: 'insurance_view_viewAction',
      desc: '',
      args: [],
    );
  }

  /// `Resubmit`
  String get insurance_view_resubmitAction {
    return Intl.message(
      'Resubmit',
      name: 'insurance_view_resubmitAction',
      desc: '',
      args: [],
    );
  }

  /// `Auth #`
  String get insurance_view_columnAuth {
    return Intl.message(
      'Auth #',
      name: 'insurance_view_columnAuth',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get insurance_view_columnService {
    return Intl.message(
      'Service',
      name: 'insurance_view_columnService',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Cost`
  String get insurance_view_columnEstimatedCost {
    return Intl.message(
      'Estimated Cost',
      name: 'insurance_view_columnEstimatedCost',
      desc: '',
      args: [],
    );
  }

  /// `Validity`
  String get insurance_view_columnValidity {
    return Intl.message(
      'Validity',
      name: 'insurance_view_columnValidity',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get insurance_view_cancelAction {
    return Intl.message(
      'Cancel',
      name: 'insurance_view_cancelAction',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get insurance_view_columnCode {
    return Intl.message(
      'Code',
      name: 'insurance_view_columnCode',
      desc: '',
      args: [],
    );
  }

  /// `Coverage`
  String get insurance_view_columnCoverage {
    return Intl.message(
      'Coverage',
      name: 'insurance_view_columnCoverage',
      desc: '',
      args: [],
    );
  }

  /// `Co-pay`
  String get insurance_view_columnCoPay {
    return Intl.message(
      'Co-pay',
      name: 'insurance_view_columnCoPay',
      desc: '',
      args: [],
    );
  }

  /// `Deductible`
  String get insurance_view_columnDeductible {
    return Intl.message(
      'Deductible',
      name: 'insurance_view_columnDeductible',
      desc: '',
      args: [],
    );
  }

  /// `Annual limit`
  String get insurance_view_columnAnnualLimit {
    return Intl.message(
      'Annual limit',
      name: 'insurance_view_columnAnnualLimit',
      desc: '',
      args: [],
    );
  }

  /// `Pre-auth`
  String get insurance_view_columnPreAuth {
    return Intl.message(
      'Pre-auth',
      name: 'insurance_view_columnPreAuth',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get insurance_view_required {
    return Intl.message(
      'Required',
      name: 'insurance_view_required',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get insurance_view_no {
    return Intl.message('No', name: 'insurance_view_no', desc: '', args: []);
  }

  /// `Active`
  String get insurance_view_active {
    return Intl.message(
      'Active',
      name: 'insurance_view_active',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get insurance_view_inactive {
    return Intl.message(
      'Inactive',
      name: 'insurance_view_inactive',
      desc: '',
      args: [],
    );
  }

  /// `Claim {claimNumber}`
  String insurance_view_claimTitle(String claimNumber) {
    return Intl.message(
      'Claim $claimNumber',
      name: 'insurance_view_claimTitle',
      desc: '',
      args: [claimNumber],
    );
  }

  /// `Total Amount`
  String get insurance_view_totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'insurance_view_totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Claimed Amount`
  String get insurance_view_claimedAmount {
    return Intl.message(
      'Claimed Amount',
      name: 'insurance_view_claimedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Paid Amount`
  String get insurance_view_paidAmount {
    return Intl.message(
      'Paid Amount',
      name: 'insurance_view_paidAmount',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Codes`
  String get insurance_view_diagnosisCodes {
    return Intl.message(
      'Diagnosis Codes',
      name: 'insurance_view_diagnosisCodes',
      desc: '',
      args: [],
    );
  }

  /// `Procedure Codes`
  String get insurance_view_procedureCodes {
    return Intl.message(
      'Procedure Codes',
      name: 'insurance_view_procedureCodes',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get insurance_view_notes {
    return Intl.message(
      'Notes',
      name: 'insurance_view_notes',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get insurance_view_close {
    return Intl.message(
      'Close',
      name: 'insurance_view_close',
      desc: '',
      args: [],
    );
  }

  /// `Pre-Authorization {authNumber}`
  String insurance_view_preAuthTitle(String authNumber) {
    return Intl.message(
      'Pre-Authorization $authNumber',
      name: 'insurance_view_preAuthTitle',
      desc: '',
      args: [authNumber],
    );
  }

  /// `Service Requested`
  String get insurance_view_serviceRequested {
    return Intl.message(
      'Service Requested',
      name: 'insurance_view_serviceRequested',
      desc: '',
      args: [],
    );
  }

  /// `Valid From`
  String get insurance_view_validFrom {
    return Intl.message(
      'Valid From',
      name: 'insurance_view_validFrom',
      desc: '',
      args: [],
    );
  }

  /// `Valid To`
  String get insurance_view_validTo {
    return Intl.message(
      'Valid To',
      name: 'insurance_view_validTo',
      desc: '',
      args: [],
    );
  }

  /// `Resubmit Claim`
  String get insurance_view_resubmitTitle {
    return Intl.message(
      'Resubmit Claim',
      name: 'insurance_view_resubmitTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to resubmit claim {claimNumber}?`
  String insurance_view_resubmitMsg(String claimNumber) {
    return Intl.message(
      'Are you sure you want to resubmit claim $claimNumber?',
      name: 'insurance_view_resubmitMsg',
      desc: '',
      args: [claimNumber],
    );
  }

  /// `Cancel Pre-Authorization`
  String get insurance_view_cancelPreAuthTitle {
    return Intl.message(
      'Cancel Pre-Authorization',
      name: 'insurance_view_cancelPreAuthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel pre-authorization {authNumber}?`
  String insurance_view_cancelPreAuthMsg(String authNumber) {
    return Intl.message(
      'Are you sure you want to cancel pre-authorization $authNumber?',
      name: 'insurance_view_cancelPreAuthMsg',
      desc: '',
      args: [authNumber],
    );
  }

  /// `Yes, Cancel`
  String get insurance_view_yesCancel {
    return Intl.message(
      'Yes, Cancel',
      name: 'insurance_view_yesCancel',
      desc: '',
      args: [],
    );
  }

  /// `New Insurance Claim`
  String get insurance_add_title {
    return Intl.message(
      'New Insurance Claim',
      name: 'insurance_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get insurance_add_patient {
    return Intl.message(
      'Patient',
      name: 'insurance_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Plan`
  String get insurance_add_insurancePlan {
    return Intl.message(
      'Insurance Plan',
      name: 'insurance_add_insurancePlan',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Codes`
  String get insurance_add_diagnosisCodes {
    return Intl.message(
      'Diagnosis Codes',
      name: 'insurance_add_diagnosisCodes',
      desc: '',
      args: [],
    );
  }

  /// `Procedure Codes`
  String get insurance_add_procedureCodes {
    return Intl.message(
      'Procedure Codes',
      name: 'insurance_add_procedureCodes',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get insurance_add_totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'insurance_add_totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Claimed Amount`
  String get insurance_add_claimedAmount {
    return Intl.message(
      'Claimed Amount',
      name: 'insurance_add_claimedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get insurance_add_notes {
    return Intl.message(
      'Notes',
      name: 'insurance_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get insurance_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'insurance_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get insurance_add_save {
    return Intl.message('Save', name: 'insurance_add_save', desc: '', args: []);
  }

  /// `Laboratory`
  String get laboratory_view_title {
    return Intl.message(
      'Laboratory',
      name: 'laboratory_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Test orders, sample collection, results, and approval.`
  String get laboratory_view_description {
    return Intl.message(
      'Test orders, sample collection, results, and approval.',
      name: 'laboratory_view_description',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get laboratory_view_newOrder {
    return Intl.message(
      'New Order',
      name: 'laboratory_view_newOrder',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get laboratory_view_totalOrders {
    return Intl.message(
      'Total Orders',
      name: 'laboratory_view_totalOrders',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get laboratory_view_pending {
    return Intl.message(
      'Pending',
      name: 'laboratory_view_pending',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get laboratory_view_inProgress {
    return Intl.message(
      'In Progress',
      name: 'laboratory_view_inProgress',
      desc: '',
      args: [],
    );
  }

  /// `STAT priority`
  String get laboratory_view_statPriority {
    return Intl.message(
      'STAT priority',
      name: 'laboratory_view_statPriority',
      desc: '',
      args: [],
    );
  }

  /// `All statuses`
  String get laboratory_view_allStatuses {
    return Intl.message(
      'All statuses',
      name: 'laboratory_view_allStatuses',
      desc: '',
      args: [],
    );
  }

  /// `Sample collected`
  String get laboratory_view_sampleCollected {
    return Intl.message(
      'Sample collected',
      name: 'laboratory_view_sampleCollected',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get laboratory_view_completed {
    return Intl.message(
      'Completed',
      name: 'laboratory_view_completed',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get laboratory_view_approved {
    return Intl.message(
      'Approved',
      name: 'laboratory_view_approved',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get laboratory_view_cancelled {
    return Intl.message(
      'Cancelled',
      name: 'laboratory_view_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Filter by Status`
  String get laboratory_view_filterByStatus {
    return Intl.message(
      'Filter by Status',
      name: 'laboratory_view_filterByStatus',
      desc: '',
      args: [],
    );
  }

  /// `All priorities`
  String get laboratory_view_allPriorities {
    return Intl.message(
      'All priorities',
      name: 'laboratory_view_allPriorities',
      desc: '',
      args: [],
    );
  }

  /// `Routine`
  String get laboratory_view_routine {
    return Intl.message(
      'Routine',
      name: 'laboratory_view_routine',
      desc: '',
      args: [],
    );
  }

  /// `Urgent`
  String get laboratory_view_urgent {
    return Intl.message(
      'Urgent',
      name: 'laboratory_view_urgent',
      desc: '',
      args: [],
    );
  }

  /// `STAT`
  String get laboratory_view_stat {
    return Intl.message(
      'STAT',
      name: 'laboratory_view_stat',
      desc: '',
      args: [],
    );
  }

  /// `Filter by Priority`
  String get laboratory_view_filterByPriority {
    return Intl.message(
      'Filter by Priority',
      name: 'laboratory_view_filterByPriority',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get laboratory_view_clear {
    return Intl.message(
      'Clear',
      name: 'laboratory_view_clear',
      desc: '',
      args: [],
    );
  }

  /// `Order #`
  String get laboratory_view_columnOrder {
    return Intl.message(
      'Order #',
      name: 'laboratory_view_columnOrder',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get laboratory_view_columnDate {
    return Intl.message(
      'Date',
      name: 'laboratory_view_columnDate',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get laboratory_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'laboratory_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Tests`
  String get laboratory_view_columnTests {
    return Intl.message(
      'Tests',
      name: 'laboratory_view_columnTests',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get laboratory_view_columnPriority {
    return Intl.message(
      'Priority',
      name: 'laboratory_view_columnPriority',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get laboratory_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'laboratory_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get laboratory_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'laboratory_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `View details`
  String get laboratory_view_viewDetails {
    return Intl.message(
      'View details',
      name: 'laboratory_view_viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `Cancel order`
  String get laboratory_view_cancelOrderTooltip {
    return Intl.message(
      'Cancel order',
      name: 'laboratory_view_cancelOrderTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Lab Order {orderNumber}`
  String laboratory_view_orderDetailsTitle(String orderNumber) {
    return Intl.message(
      'Lab Order $orderNumber',
      name: 'laboratory_view_orderDetailsTitle',
      desc: '',
      args: [orderNumber],
    );
  }

  /// `Patient ID`
  String get laboratory_view_patientId {
    return Intl.message(
      'Patient ID',
      name: 'laboratory_view_patientId',
      desc: '',
      args: [],
    );
  }

  /// `Doctor ID`
  String get laboratory_view_doctorId {
    return Intl.message(
      'Doctor ID',
      name: 'laboratory_view_doctorId',
      desc: '',
      args: [],
    );
  }

  /// `Clinical Indication`
  String get laboratory_view_clinicalIndication {
    return Intl.message(
      'Clinical Indication',
      name: 'laboratory_view_clinicalIndication',
      desc: '',
      args: [],
    );
  }

  /// `Specimen Type`
  String get laboratory_view_specimenType {
    return Intl.message(
      'Specimen Type',
      name: 'laboratory_view_specimenType',
      desc: '',
      args: [],
    );
  }

  /// `Order Date`
  String get laboratory_view_orderDate {
    return Intl.message(
      'Order Date',
      name: 'laboratory_view_orderDate',
      desc: '',
      args: [],
    );
  }

  /// `Tests`
  String get laboratory_view_testsTitle {
    return Intl.message(
      'Tests',
      name: 'laboratory_view_testsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get laboratory_view_close {
    return Intl.message(
      'Close',
      name: 'laboratory_view_close',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Lab Order`
  String get laboratory_view_cancelTitle {
    return Intl.message(
      'Cancel Lab Order',
      name: 'laboratory_view_cancelTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel order {orderNumber}?`
  String laboratory_view_cancelMsg(String orderNumber) {
    return Intl.message(
      'Are you sure you want to cancel order $orderNumber?',
      name: 'laboratory_view_cancelMsg',
      desc: '',
      args: [orderNumber],
    );
  }

  /// `No`
  String get laboratory_view_no {
    return Intl.message('No', name: 'laboratory_view_no', desc: '', args: []);
  }

  /// `Yes, Cancel`
  String get laboratory_view_yesCancel {
    return Intl.message(
      'Yes, Cancel',
      name: 'laboratory_view_yesCancel',
      desc: '',
      args: [],
    );
  }

  /// `New Lab Order`
  String get laboratory_add_title {
    return Intl.message(
      'New Lab Order',
      name: 'laboratory_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get laboratory_add_patient {
    return Intl.message(
      'Patient',
      name: 'laboratory_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get laboratory_add_priority {
    return Intl.message(
      'Priority',
      name: 'laboratory_add_priority',
      desc: '',
      args: [],
    );
  }

  /// `Routine`
  String get laboratory_add_routine {
    return Intl.message(
      'Routine',
      name: 'laboratory_add_routine',
      desc: '',
      args: [],
    );
  }

  /// `Urgent`
  String get laboratory_add_urgent {
    return Intl.message(
      'Urgent',
      name: 'laboratory_add_urgent',
      desc: '',
      args: [],
    );
  }

  /// `STAT`
  String get laboratory_add_stat {
    return Intl.message(
      'STAT',
      name: 'laboratory_add_stat',
      desc: '',
      args: [],
    );
  }

  /// `Clinical Indication`
  String get laboratory_add_clinicalIndication {
    return Intl.message(
      'Clinical Indication',
      name: 'laboratory_add_clinicalIndication',
      desc: '',
      args: [],
    );
  }

  /// `Specimen Type`
  String get laboratory_add_specimenType {
    return Intl.message(
      'Specimen Type',
      name: 'laboratory_add_specimenType',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get laboratory_add_notes {
    return Intl.message(
      'Notes',
      name: 'laboratory_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get laboratory_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'laboratory_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get laboratory_add_save {
    return Intl.message(
      'Save',
      name: 'laboratory_add_save',
      desc: '',
      args: [],
    );
  }

  /// `Medical Records`
  String get medical_records_view_title {
    return Intl.message(
      'Medical Records',
      name: 'medical_records_view_title',
      desc: '',
      args: [],
    );
  }

  /// `View and manage patient medical records.`
  String get medical_records_view_description {
    return Intl.message(
      'View and manage patient medical records.',
      name: 'medical_records_view_description',
      desc: '',
      args: [],
    );
  }

  /// `New Record`
  String get medical_records_view_newRecord {
    return Intl.message(
      'New Record',
      name: 'medical_records_view_newRecord',
      desc: '',
      args: [],
    );
  }

  /// `Records`
  String get medical_records_view_records {
    return Intl.message(
      'Records',
      name: 'medical_records_view_records',
      desc: '',
      args: [],
    );
  }

  /// `Record ID: {id}`
  String medical_records_view_recordId(String id) {
    return Intl.message(
      'Record ID: $id',
      name: 'medical_records_view_recordId',
      desc: '',
      args: [id],
    );
  }

  /// `No Date`
  String get medical_records_view_noDate {
    return Intl.message(
      'No Date',
      name: 'medical_records_view_noDate',
      desc: '',
      args: [],
    );
  }

  /// `Select a medical record to view details`
  String get medical_records_view_selectRecord {
    return Intl.message(
      'Select a medical record to view details',
      name: 'medical_records_view_selectRecord',
      desc: '',
      args: [],
    );
  }

  /// `Record details`
  String get medical_records_view_recordDetails {
    return Intl.message(
      'Record details',
      name: 'medical_records_view_recordDetails',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get medical_records_view_delete {
    return Intl.message(
      'Delete',
      name: 'medical_records_view_delete',
      desc: '',
      args: [],
    );
  }

  /// `Patient ID`
  String get medical_records_view_patientId {
    return Intl.message(
      'Patient ID',
      name: 'medical_records_view_patientId',
      desc: '',
      args: [],
    );
  }

  /// `Doctor ID`
  String get medical_records_view_doctorId {
    return Intl.message(
      'Doctor ID',
      name: 'medical_records_view_doctorId',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Code`
  String get medical_records_view_diagnosisCode {
    return Intl.message(
      'Diagnosis Code',
      name: 'medical_records_view_diagnosisCode',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Description`
  String get medical_records_view_diagnosisDescription {
    return Intl.message(
      'Diagnosis Description',
      name: 'medical_records_view_diagnosisDescription',
      desc: '',
      args: [],
    );
  }

  /// `Subjective`
  String get medical_records_view_subjective {
    return Intl.message(
      'Subjective',
      name: 'medical_records_view_subjective',
      desc: '',
      args: [],
    );
  }

  /// `Objective`
  String get medical_records_view_objective {
    return Intl.message(
      'Objective',
      name: 'medical_records_view_objective',
      desc: '',
      args: [],
    );
  }

  /// `Assessment`
  String get medical_records_view_assessment {
    return Intl.message(
      'Assessment',
      name: 'medical_records_view_assessment',
      desc: '',
      args: [],
    );
  }

  /// `Plan`
  String get medical_records_view_plan {
    return Intl.message(
      'Plan',
      name: 'medical_records_view_plan',
      desc: '',
      args: [],
    );
  }

  /// `Allergies`
  String get medical_records_view_allergies {
    return Intl.message(
      'Allergies',
      name: 'medical_records_view_allergies',
      desc: '',
      args: [],
    );
  }

  /// `Current Medications`
  String get medical_records_view_currentMedications {
    return Intl.message(
      'Current Medications',
      name: 'medical_records_view_currentMedications',
      desc: '',
      args: [],
    );
  }

  /// `Clinical Notes`
  String get medical_records_view_clinicalNotes {
    return Intl.message(
      'Clinical Notes',
      name: 'medical_records_view_clinicalNotes',
      desc: '',
      args: [],
    );
  }

  /// `Delete Medical Record`
  String get medical_records_view_deleteTitle {
    return Intl.message(
      'Delete Medical Record',
      name: 'medical_records_view_deleteTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this medical record?`
  String get medical_records_view_deleteMsg {
    return Intl.message(
      'Are you sure you want to delete this medical record?',
      name: 'medical_records_view_deleteMsg',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get medical_records_view_cancel {
    return Intl.message(
      'Cancel',
      name: 'medical_records_view_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Add Medical Record`
  String get medical_records_add_title {
    return Intl.message(
      'Add Medical Record',
      name: 'medical_records_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get medical_records_add_patient {
    return Intl.message(
      'Patient',
      name: 'medical_records_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Code`
  String get medical_records_add_diagnosisCode {
    return Intl.message(
      'Diagnosis Code',
      name: 'medical_records_add_diagnosisCode',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis Description`
  String get medical_records_add_diagnosisDescription {
    return Intl.message(
      'Diagnosis Description',
      name: 'medical_records_add_diagnosisDescription',
      desc: '',
      args: [],
    );
  }

  /// `Subjective`
  String get medical_records_add_subjective {
    return Intl.message(
      'Subjective',
      name: 'medical_records_add_subjective',
      desc: '',
      args: [],
    );
  }

  /// `Objective`
  String get medical_records_add_objective {
    return Intl.message(
      'Objective',
      name: 'medical_records_add_objective',
      desc: '',
      args: [],
    );
  }

  /// `Assessment`
  String get medical_records_add_assessment {
    return Intl.message(
      'Assessment',
      name: 'medical_records_add_assessment',
      desc: '',
      args: [],
    );
  }

  /// `Plan`
  String get medical_records_add_plan {
    return Intl.message(
      'Plan',
      name: 'medical_records_add_plan',
      desc: '',
      args: [],
    );
  }

  /// `Allergies`
  String get medical_records_add_allergies {
    return Intl.message(
      'Allergies',
      name: 'medical_records_add_allergies',
      desc: '',
      args: [],
    );
  }

  /// `Current Medications`
  String get medical_records_add_currentMedications {
    return Intl.message(
      'Current Medications',
      name: 'medical_records_add_currentMedications',
      desc: '',
      args: [],
    );
  }

  /// `Clinical Notes`
  String get medical_records_add_clinicalNotes {
    return Intl.message(
      'Clinical Notes',
      name: 'medical_records_add_clinicalNotes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get medical_records_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'medical_records_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get medical_records_add_save {
    return Intl.message(
      'Save',
      name: 'medical_records_add_save',
      desc: '',
      args: [],
    );
  }

  /// `Operating Room`
  String get operating_room_view_title {
    return Intl.message(
      'Operating Room',
      name: 'operating_room_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Surgery schedule, teams, safety checklists.`
  String get operating_room_view_description {
    return Intl.message(
      'Surgery schedule, teams, safety checklists.',
      name: 'operating_room_view_description',
      desc: '',
      args: [],
    );
  }

  /// `Book Surgery`
  String get operating_room_view_bookSurgery {
    return Intl.message(
      'Book Surgery',
      name: 'operating_room_view_bookSurgery',
      desc: '',
      args: [],
    );
  }

  /// `Total Bookings`
  String get operating_room_view_totalBookings {
    return Intl.message(
      'Total Bookings',
      name: 'operating_room_view_totalBookings',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled`
  String get operating_room_view_scheduled {
    return Intl.message(
      'Scheduled',
      name: 'operating_room_view_scheduled',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get operating_room_view_inProgress {
    return Intl.message(
      'In Progress',
      name: 'operating_room_view_inProgress',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get operating_room_view_completed {
    return Intl.message(
      'Completed',
      name: 'operating_room_view_completed',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get operating_room_view_columnDate {
    return Intl.message(
      'Date',
      name: 'operating_room_view_columnDate',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get operating_room_view_columnTime {
    return Intl.message(
      'Time',
      name: 'operating_room_view_columnTime',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get operating_room_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'operating_room_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Procedure`
  String get operating_room_view_columnProcedure {
    return Intl.message(
      'Procedure',
      name: 'operating_room_view_columnProcedure',
      desc: '',
      args: [],
    );
  }

  /// `Room`
  String get operating_room_view_columnRoom {
    return Intl.message(
      'Room',
      name: 'operating_room_view_columnRoom',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get operating_room_view_columnPriority {
    return Intl.message(
      'Priority',
      name: 'operating_room_view_columnPriority',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get operating_room_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'operating_room_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get operating_room_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'operating_room_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get operating_room_view_viewAction {
    return Intl.message(
      'View',
      name: 'operating_room_view_viewAction',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get operating_room_view_cancelAction {
    return Intl.message(
      'Cancel',
      name: 'operating_room_view_cancelAction',
      desc: '',
      args: [],
    );
  }

  /// `Surgery Booking - {procedure}`
  String operating_room_view_bookingTitle(String procedure) {
    return Intl.message(
      'Surgery Booking - $procedure',
      name: 'operating_room_view_bookingTitle',
      desc: '',
      args: [procedure],
    );
  }

  /// `Duration`
  String get operating_room_view_duration {
    return Intl.message(
      'Duration',
      name: 'operating_room_view_duration',
      desc: '',
      args: [],
    );
  }

  /// `{minutes} minutes`
  String operating_room_view_durationMin(int minutes) {
    return Intl.message(
      '$minutes minutes',
      name: 'operating_room_view_durationMin',
      desc: '',
      args: [minutes],
    );
  }

  /// `Anesthesia`
  String get operating_room_view_anesthesia {
    return Intl.message(
      'Anesthesia',
      name: 'operating_room_view_anesthesia',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get operating_room_view_notes {
    return Intl.message(
      'Notes',
      name: 'operating_room_view_notes',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get operating_room_view_close {
    return Intl.message(
      'Close',
      name: 'operating_room_view_close',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Surgery`
  String get operating_room_view_cancelTitle {
    return Intl.message(
      'Cancel Surgery',
      name: 'operating_room_view_cancelTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel surgery for {patient}?`
  String operating_room_view_cancelMsg(String patient) {
    return Intl.message(
      'Cancel surgery for $patient?',
      name: 'operating_room_view_cancelMsg',
      desc: '',
      args: [patient],
    );
  }

  /// `Reason for cancellation`
  String get operating_room_view_reasonForCancel {
    return Intl.message(
      'Reason for cancellation',
      name: 'operating_room_view_reasonForCancel',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get operating_room_view_no {
    return Intl.message(
      'No',
      name: 'operating_room_view_no',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Cancel`
  String get operating_room_view_yesCancel {
    return Intl.message(
      'Yes, Cancel',
      name: 'operating_room_view_yesCancel',
      desc: '',
      args: [],
    );
  }

  /// `Book Surgery`
  String get operating_room_add_title {
    return Intl.message(
      'Book Surgery',
      name: 'operating_room_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get operating_room_add_patient {
    return Intl.message(
      'Patient',
      name: 'operating_room_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Procedure`
  String get operating_room_add_procedure {
    return Intl.message(
      'Procedure',
      name: 'operating_room_add_procedure',
      desc: '',
      args: [],
    );
  }

  /// `Operating Room`
  String get operating_room_add_operatingRoom {
    return Intl.message(
      'Operating Room',
      name: 'operating_room_add_operatingRoom',
      desc: '',
      args: [],
    );
  }

  /// `Duration (min)`
  String get operating_room_add_duration {
    return Intl.message(
      'Duration (min)',
      name: 'operating_room_add_duration',
      desc: '',
      args: [],
    );
  }

  /// `Priority`
  String get operating_room_add_priority {
    return Intl.message(
      'Priority',
      name: 'operating_room_add_priority',
      desc: '',
      args: [],
    );
  }

  /// `Routine`
  String get operating_room_add_routine {
    return Intl.message(
      'Routine',
      name: 'operating_room_add_routine',
      desc: '',
      args: [],
    );
  }

  /// `Urgent`
  String get operating_room_add_urgent {
    return Intl.message(
      'Urgent',
      name: 'operating_room_add_urgent',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get operating_room_add_emergency {
    return Intl.message(
      'Emergency',
      name: 'operating_room_add_emergency',
      desc: '',
      args: [],
    );
  }

  /// `Anesthesia Type`
  String get operating_room_add_anesthesiaType {
    return Intl.message(
      'Anesthesia Type',
      name: 'operating_room_add_anesthesiaType',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get operating_room_add_general {
    return Intl.message(
      'General',
      name: 'operating_room_add_general',
      desc: '',
      args: [],
    );
  }

  /// `Local`
  String get operating_room_add_local {
    return Intl.message(
      'Local',
      name: 'operating_room_add_local',
      desc: '',
      args: [],
    );
  }

  /// `Regional`
  String get operating_room_add_regional {
    return Intl.message(
      'Regional',
      name: 'operating_room_add_regional',
      desc: '',
      args: [],
    );
  }

  /// `Spinal`
  String get operating_room_add_spinal {
    return Intl.message(
      'Spinal',
      name: 'operating_room_add_spinal',
      desc: '',
      args: [],
    );
  }

  /// `Sedation`
  String get operating_room_add_sedation {
    return Intl.message(
      'Sedation',
      name: 'operating_room_add_sedation',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get operating_room_add_notes {
    return Intl.message(
      'Notes',
      name: 'operating_room_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get operating_room_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'operating_room_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get operating_room_add_save {
    return Intl.message(
      'Save',
      name: 'operating_room_add_save',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients_view_title {
    return Intl.message(
      'Patients',
      name: 'patients_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Registered patient master data — MRN, demographics, insurance, contact.`
  String get patients_view_description {
    return Intl.message(
      'Registered patient master data — MRN, demographics, insurance, contact.',
      name: 'patients_view_description',
      desc: '',
      args: [],
    );
  }

  /// `Add Patient`
  String get patients_view_addPatient {
    return Intl.message(
      'Add Patient',
      name: 'patients_view_addPatient',
      desc: '',
      args: [],
    );
  }

  /// `All genders`
  String get patients_view_allGenders {
    return Intl.message(
      'All genders',
      name: 'patients_view_allGenders',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get patients_view_male {
    return Intl.message('Male', name: 'patients_view_male', desc: '', args: []);
  }

  /// `Female`
  String get patients_view_female {
    return Intl.message(
      'Female',
      name: 'patients_view_female',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get patients_view_genderHint {
    return Intl.message(
      'Gender',
      name: 'patients_view_genderHint',
      desc: '',
      args: [],
    );
  }

  /// `MRN`
  String get patients_view_columnMrn {
    return Intl.message(
      'MRN',
      name: 'patients_view_columnMrn',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get patients_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'patients_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `DOB / Age`
  String get patients_view_columnDobAge {
    return Intl.message(
      'DOB / Age',
      name: 'patients_view_columnDobAge',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get patients_view_columnGender {
    return Intl.message(
      'Gender',
      name: 'patients_view_columnGender',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get patients_view_columnPhone {
    return Intl.message(
      'Phone',
      name: 'patients_view_columnPhone',
      desc: '',
      args: [],
    );
  }

  /// `Blood`
  String get patients_view_columnBlood {
    return Intl.message(
      'Blood',
      name: 'patients_view_columnBlood',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get patients_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'patients_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get patients_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'patients_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get patients_view_active {
    return Intl.message(
      'Active',
      name: 'patients_view_active',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get patients_view_inactive {
    return Intl.message(
      'Inactive',
      name: 'patients_view_inactive',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get patients_view_viewAction {
    return Intl.message(
      'View',
      name: 'patients_view_viewAction',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get patients_view_editAction {
    return Intl.message(
      'Edit',
      name: 'patients_view_editAction',
      desc: '',
      args: [],
    );
  }

  /// `Patient Details`
  String get patients_view_patientDetails {
    return Intl.message(
      'Patient Details',
      name: 'patients_view_patientDetails',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get patients_view_name {
    return Intl.message('Name', name: 'patients_view_name', desc: '', args: []);
  }

  /// `Date of Birth`
  String get patients_view_dob {
    return Intl.message(
      'Date of Birth',
      name: 'patients_view_dob',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get patients_view_age {
    return Intl.message('Age', name: 'patients_view_age', desc: '', args: []);
  }

  /// `Blood Type`
  String get patients_view_bloodType {
    return Intl.message(
      'Blood Type',
      name: 'patients_view_bloodType',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get patients_view_nationalId {
    return Intl.message(
      'National ID',
      name: 'patients_view_nationalId',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get patients_view_email {
    return Intl.message(
      'Email',
      name: 'patients_view_email',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get patients_view_mobile {
    return Intl.message(
      'Mobile',
      name: 'patients_view_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get patients_view_address {
    return Intl.message(
      'Address',
      name: 'patients_view_address',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contact`
  String get patients_view_emergencyContact {
    return Intl.message(
      'Emergency Contact',
      name: 'patients_view_emergencyContact',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Phone`
  String get patients_view_emergencyPhone {
    return Intl.message(
      'Emergency Phone',
      name: 'patients_view_emergencyPhone',
      desc: '',
      args: [],
    );
  }

  /// `Relationship`
  String get patients_view_relationship {
    return Intl.message(
      'Relationship',
      name: 'patients_view_relationship',
      desc: '',
      args: [],
    );
  }

  /// `VIP`
  String get patients_view_vip {
    return Intl.message('VIP', name: 'patients_view_vip', desc: '', args: []);
  }

  /// `Yes`
  String get patients_view_yes {
    return Intl.message('Yes', name: 'patients_view_yes', desc: '', args: []);
  }

  /// `No`
  String get patients_view_no {
    return Intl.message('No', name: 'patients_view_no', desc: '', args: []);
  }

  /// `Close`
  String get patients_view_close {
    return Intl.message(
      'Close',
      name: 'patients_view_close',
      desc: '',
      args: [],
    );
  }

  /// `Add Patient`
  String get patients_add_addTitle {
    return Intl.message(
      'Add Patient',
      name: 'patients_add_addTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Patient`
  String get patients_add_editTitle {
    return Intl.message(
      'Edit Patient',
      name: 'patients_add_editTitle',
      desc: '',
      args: [],
    );
  }

  /// `MRN`
  String get patients_add_mrn {
    return Intl.message('MRN', name: 'patients_add_mrn', desc: '', args: []);
  }

  /// `First Name`
  String get patients_add_firstName {
    return Intl.message(
      'First Name',
      name: 'patients_add_firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get patients_add_lastName {
    return Intl.message(
      'Last Name',
      name: 'patients_add_lastName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get patients_add_email {
    return Intl.message(
      'Email',
      name: 'patients_add_email',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get patients_add_mobile {
    return Intl.message(
      'Mobile',
      name: 'patients_add_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get patients_add_dateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'patients_add_dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get patients_add_gender {
    return Intl.message(
      'Gender',
      name: 'patients_add_gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get patients_add_male {
    return Intl.message('Male', name: 'patients_add_male', desc: '', args: []);
  }

  /// `Female`
  String get patients_add_female {
    return Intl.message(
      'Female',
      name: 'patients_add_female',
      desc: '',
      args: [],
    );
  }

  /// `Blood Type`
  String get patients_add_bloodType {
    return Intl.message(
      'Blood Type',
      name: 'patients_add_bloodType',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get patients_add_address {
    return Intl.message(
      'Address',
      name: 'patients_add_address',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get patients_add_nationalId {
    return Intl.message(
      'National ID',
      name: 'patients_add_nationalId',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contact Name`
  String get patients_add_emergencyContactName {
    return Intl.message(
      'Emergency Contact Name',
      name: 'patients_add_emergencyContactName',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contact Phone`
  String get patients_add_emergencyContactPhone {
    return Intl.message(
      'Emergency Contact Phone',
      name: 'patients_add_emergencyContactPhone',
      desc: '',
      args: [],
    );
  }

  /// `Relationship`
  String get patients_add_emergencyContactRelationship {
    return Intl.message(
      'Relationship',
      name: 'patients_add_emergencyContactRelationship',
      desc: '',
      args: [],
    );
  }

  /// `VIP Status`
  String get patients_add_vipStatus {
    return Intl.message(
      'VIP Status',
      name: 'patients_add_vipStatus',
      desc: '',
      args: [],
    );
  }

  /// `Active Status`
  String get patients_add_activeStatus {
    return Intl.message(
      'Active Status',
      name: 'patients_add_activeStatus',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get patients_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'patients_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get patients_add_save {
    return Intl.message('Save', name: 'patients_add_save', desc: '', args: []);
  }

  /// `Pharmacy`
  String get pharmacy_view_title {
    return Intl.message(
      'Pharmacy',
      name: 'pharmacy_view_title',
      desc: '',
      args: [],
    );
  }

  /// `Prescriptions, dispensing, and medication tracking.`
  String get pharmacy_view_description {
    return Intl.message(
      'Prescriptions, dispensing, and medication tracking.',
      name: 'pharmacy_view_description',
      desc: '',
      args: [],
    );
  }

  /// `New Prescription`
  String get pharmacy_view_newPrescription {
    return Intl.message(
      'New Prescription',
      name: 'pharmacy_view_newPrescription',
      desc: '',
      args: [],
    );
  }

  /// `Total Rx`
  String get pharmacy_view_totalRx {
    return Intl.message(
      'Total Rx',
      name: 'pharmacy_view_totalRx',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pharmacy_view_pending {
    return Intl.message(
      'Pending',
      name: 'pharmacy_view_pending',
      desc: '',
      args: [],
    );
  }

  /// `Dispensed`
  String get pharmacy_view_dispensed {
    return Intl.message(
      'Dispensed',
      name: 'pharmacy_view_dispensed',
      desc: '',
      args: [],
    );
  }

  /// `Line items`
  String get pharmacy_view_lineItems {
    return Intl.message(
      'Line items',
      name: 'pharmacy_view_lineItems',
      desc: '',
      args: [],
    );
  }

  /// `All Statuses`
  String get pharmacy_view_allStatuses {
    return Intl.message(
      'All Statuses',
      name: 'pharmacy_view_allStatuses',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get pharmacy_view_cancelled {
    return Intl.message(
      'Cancelled',
      name: 'pharmacy_view_cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Filter by status`
  String get pharmacy_view_filterByStatus {
    return Intl.message(
      'Filter by status',
      name: 'pharmacy_view_filterByStatus',
      desc: '',
      args: [],
    );
  }

  /// `Rx #`
  String get pharmacy_view_columnRx {
    return Intl.message(
      'Rx #',
      name: 'pharmacy_view_columnRx',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get pharmacy_view_columnDate {
    return Intl.message(
      'Date',
      name: 'pharmacy_view_columnDate',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get pharmacy_view_columnPatient {
    return Intl.message(
      'Patient',
      name: 'pharmacy_view_columnPatient',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis`
  String get pharmacy_view_columnDiagnosis {
    return Intl.message(
      'Diagnosis',
      name: 'pharmacy_view_columnDiagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get pharmacy_view_columnItems {
    return Intl.message(
      'Items',
      name: 'pharmacy_view_columnItems',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get pharmacy_view_columnStatus {
    return Intl.message(
      'Status',
      name: 'pharmacy_view_columnStatus',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get pharmacy_view_columnActions {
    return Intl.message(
      'Actions',
      name: 'pharmacy_view_columnActions',
      desc: '',
      args: [],
    );
  }

  /// `No items`
  String get pharmacy_view_noItems {
    return Intl.message(
      'No items',
      name: 'pharmacy_view_noItems',
      desc: '',
      args: [],
    );
  }

  /// `Dispense`
  String get pharmacy_view_dispenseAction {
    return Intl.message(
      'Dispense',
      name: 'pharmacy_view_dispenseAction',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get pharmacy_view_cancelAction {
    return Intl.message(
      'Cancel',
      name: 'pharmacy_view_cancelAction',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Prescription`
  String get pharmacy_view_cancelTitle {
    return Intl.message(
      'Cancel Prescription',
      name: 'pharmacy_view_cancelTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel prescription {rxNumber}?`
  String pharmacy_view_cancelMsg(String rxNumber) {
    return Intl.message(
      'Are you sure you want to cancel prescription $rxNumber?',
      name: 'pharmacy_view_cancelMsg',
      desc: '',
      args: [rxNumber],
    );
  }

  /// `No`
  String get pharmacy_view_no {
    return Intl.message('No', name: 'pharmacy_view_no', desc: '', args: []);
  }

  /// `Yes, Cancel`
  String get pharmacy_view_yesCancel {
    return Intl.message(
      'Yes, Cancel',
      name: 'pharmacy_view_yesCancel',
      desc: '',
      args: [],
    );
  }

  /// `Dispense Prescription`
  String get pharmacy_view_dispenseTitle {
    return Intl.message(
      'Dispense Prescription',
      name: 'pharmacy_view_dispenseTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mark prescription {rxNumber} as dispensed?`
  String pharmacy_view_dispenseMsg(String rxNumber) {
    return Intl.message(
      'Mark prescription $rxNumber as dispensed?',
      name: 'pharmacy_view_dispenseMsg',
      desc: '',
      args: [rxNumber],
    );
  }

  /// `New Prescription`
  String get pharmacy_add_title {
    return Intl.message(
      'New Prescription',
      name: 'pharmacy_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get pharmacy_add_patient {
    return Intl.message(
      'Patient',
      name: 'pharmacy_add_patient',
      desc: '',
      args: [],
    );
  }

  /// `Diagnosis`
  String get pharmacy_add_diagnosis {
    return Intl.message(
      'Diagnosis',
      name: 'pharmacy_add_diagnosis',
      desc: '',
      args: [],
    );
  }

  /// `Medication Items`
  String get pharmacy_add_medicationItems {
    return Intl.message(
      'Medication Items',
      name: 'pharmacy_add_medicationItems',
      desc: '',
      args: [],
    );
  }

  /// `Add Item`
  String get pharmacy_add_addItem {
    return Intl.message(
      'Add Item',
      name: 'pharmacy_add_addItem',
      desc: '',
      args: [],
    );
  }

  /// `Medication Name`
  String get pharmacy_add_medicationName {
    return Intl.message(
      'Medication Name',
      name: 'pharmacy_add_medicationName',
      desc: '',
      args: [],
    );
  }

  /// `Dosage`
  String get pharmacy_add_dosage {
    return Intl.message(
      'Dosage',
      name: 'pharmacy_add_dosage',
      desc: '',
      args: [],
    );
  }

  /// `Frequency`
  String get pharmacy_add_frequency {
    return Intl.message(
      'Frequency',
      name: 'pharmacy_add_frequency',
      desc: '',
      args: [],
    );
  }

  /// `Duration (Days)`
  String get pharmacy_add_durationDays {
    return Intl.message(
      'Duration (Days)',
      name: 'pharmacy_add_durationDays',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get pharmacy_add_instructions {
    return Intl.message(
      'Instructions',
      name: 'pharmacy_add_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get pharmacy_add_notes {
    return Intl.message(
      'Notes',
      name: 'pharmacy_add_notes',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get pharmacy_add_cancel {
    return Intl.message(
      'Cancel',
      name: 'pharmacy_add_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get pharmacy_add_save {
    return Intl.message('Save', name: 'pharmacy_add_save', desc: '', args: []);
  }

  /// `Overview`
  String get drawer_overview {
    return Intl.message(
      'Overview',
      name: 'drawer_overview',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get drawer_dashboard {
    return Intl.message(
      'Dashboard',
      name: 'drawer_dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get drawer_patients {
    return Intl.message(
      'Patients',
      name: 'drawer_patients',
      desc: '',
      args: [],
    );
  }

  /// `Appointments`
  String get drawer_appointments {
    return Intl.message(
      'Appointments',
      name: 'drawer_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Medical Records`
  String get drawer_medicalRecords {
    return Intl.message(
      'Medical Records',
      name: 'drawer_medicalRecords',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacy`
  String get drawer_pharmacy {
    return Intl.message(
      'Pharmacy',
      name: 'drawer_pharmacy',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory`
  String get drawer_laboratory {
    return Intl.message(
      'Laboratory',
      name: 'drawer_laboratory',
      desc: '',
      args: [],
    );
  }

  /// `Inpatient (IPD)`
  String get drawer_inpatient {
    return Intl.message(
      'Inpatient (IPD)',
      name: 'drawer_inpatient',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get drawer_emergency {
    return Intl.message(
      'Emergency',
      name: 'drawer_emergency',
      desc: '',
      args: [],
    );
  }

  /// `Operating Room`
  String get drawer_operatingRoom {
    return Intl.message(
      'Operating Room',
      name: 'drawer_operatingRoom',
      desc: '',
      args: [],
    );
  }

  /// `Insurance`
  String get drawer_insurance {
    return Intl.message(
      'Insurance',
      name: 'drawer_insurance',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get drawer_logout {
    return Intl.message('Logout', name: 'drawer_logout', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

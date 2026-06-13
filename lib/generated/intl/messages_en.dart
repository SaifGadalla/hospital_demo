// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(totalAppointments) => "${totalAppointments} on file";

  static String m1(totalERToday) => "${totalERToday} total today";

  static String m2(number) => "Ambulance Call AC-${number}";

  static String m3(patientName) => "Patient: ${patientName}";

  static String m4(status) => "Status updated to: ${status}";

  static String m5(patientName) =>
      "Are you sure you want to discharge ${patientName}?";

  static String m6(patientName) => "Transfer ${patientName} to a new bed.";

  static String m7(authNumber) =>
      "Are you sure you want to cancel pre-authorization ${authNumber}?";

  static String m8(claimNumber) => "Claim ${claimNumber}";

  static String m9(authNumber) => "Pre-Authorization ${authNumber}";

  static String m10(claimNumber) =>
      "Are you sure you want to resubmit claim ${claimNumber}?";

  static String m11(orderNumber) =>
      "Are you sure you want to cancel order ${orderNumber}?";

  static String m12(orderNumber) => "Lab Order ${orderNumber}";

  static String m13(id) => "Record ID: ${id}";

  static String m14(procedure) => "Surgery Booking - ${procedure}";

  static String m15(patient) => "Cancel surgery for ${patient}?";

  static String m16(minutes) => "${minutes} minutes";

  static String m17(rxNumber) =>
      "Are you sure you want to cancel prescription ${rxNumber}?";

  static String m18(rxNumber) => "Mark prescription ${rxNumber} as dispensed?";

  static String m19(triageLevel) => "ESI ${triageLevel}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "app_page_searchPatients": MessageLookupByLibrary.simpleMessage(
      "Search patients",
    ),
    "appointments_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "appointments_add_consultation": MessageLookupByLibrary.simpleMessage(
      "Consultation",
    ),
    "appointments_add_followUp": MessageLookupByLibrary.simpleMessage(
      "Follow-up",
    ),
    "appointments_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "appointments_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "appointments_add_procedure": MessageLookupByLibrary.simpleMessage(
      "Procedure",
    ),
    "appointments_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "appointments_add_title": MessageLookupByLibrary.simpleMessage(
      "Add Appointment",
    ),
    "appointments_add_type": MessageLookupByLibrary.simpleMessage(
      "Appointment Type",
    ),
    "appointments_view_allTypes": MessageLookupByLibrary.simpleMessage(
      "All types",
    ),
    "appointments_view_apptNumber": MessageLookupByLibrary.simpleMessage(
      "Appt #",
    ),
    "appointments_view_board": MessageLookupByLibrary.simpleMessage("Board"),
    "appointments_view_clear": MessageLookupByLibrary.simpleMessage("Clear"),
    "appointments_view_consultation": MessageLookupByLibrary.simpleMessage(
      "Consultation",
    ),
    "appointments_view_dateTime": MessageLookupByLibrary.simpleMessage(
      "Date / time",
    ),
    "appointments_view_description": MessageLookupByLibrary.simpleMessage(
      "Schedule, check-in, and complete patient visits.",
    ),
    "appointments_view_doctor": MessageLookupByLibrary.simpleMessage("Doctor"),
    "appointments_view_followUp": MessageLookupByLibrary.simpleMessage(
      "Follow-up",
    ),
    "appointments_view_list": MessageLookupByLibrary.simpleMessage("List"),
    "appointments_view_patient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "appointments_view_procedure": MessageLookupByLibrary.simpleMessage(
      "Procedure",
    ),
    "appointments_view_schedule": MessageLookupByLibrary.simpleMessage(
      "Schedule",
    ),
    "appointments_view_status": MessageLookupByLibrary.simpleMessage("Status"),
    "appointments_view_title": MessageLookupByLibrary.simpleMessage(
      "Appointments",
    ),
    "appointments_view_type": MessageLookupByLibrary.simpleMessage("Type"),
    "dashboard_view_acrossAllWards": MessageLookupByLibrary.simpleMessage(
      "Across all wards",
    ),
    "dashboard_view_activeErCard": MessageLookupByLibrary.simpleMessage(
      "Active ER patients",
    ),
    "dashboard_view_bedOccupancyCard": MessageLookupByLibrary.simpleMessage(
      "Bed occupancy",
    ),
    "dashboard_view_bedsFree": MessageLookupByLibrary.simpleMessage(
      "Beds free",
    ),
    "dashboard_view_columnCall": MessageLookupByLibrary.simpleMessage("Call #"),
    "dashboard_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "dashboard_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "dashboard_view_columnTime": MessageLookupByLibrary.simpleMessage("Time"),
    "dashboard_view_columnTriage": MessageLookupByLibrary.simpleMessage(
      "Triage",
    ),
    "dashboard_view_columnType": MessageLookupByLibrary.simpleMessage("Type"),
    "dashboard_view_description": MessageLookupByLibrary.simpleMessage(
      "Live overview across the patient lifecycle, ER, IPD, OR, and revenue cycle.",
    ),
    "dashboard_view_erActive": MessageLookupByLibrary.simpleMessage(
      "ER active",
    ),
    "dashboard_view_insuranceClaimsCard": MessageLookupByLibrary.simpleMessage(
      "Insurance claims pipeline",
    ),
    "dashboard_view_manageClaims": MessageLookupByLibrary.simpleMessage(
      "Manage claims",
    ),
    "dashboard_view_manageIpd": MessageLookupByLibrary.simpleMessage(
      "Manage IPD",
    ),
    "dashboard_view_newAppointment": MessageLookupByLibrary.simpleMessage(
      "New Appointment",
    ),
    "dashboard_view_openEr": MessageLookupByLibrary.simpleMessage("Open ER"),
    "dashboard_view_title": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "dashboard_view_todayAppointments": MessageLookupByLibrary.simpleMessage(
      "Today appointments",
    ),
    "dashboard_view_todaysAppointmentsCard":
        MessageLookupByLibrary.simpleMessage("Today\'s appointments"),
    "dashboard_view_totalAppointmentsOnFile": m0,
    "dashboard_view_totalErToday": m1,
    "dashboard_view_totalPatients": MessageLookupByLibrary.simpleMessage(
      "Total Patients",
    ),
    "dashboard_view_viewAll": MessageLookupByLibrary.simpleMessage("View All"),
    "dashboard_view_viewPatients": MessageLookupByLibrary.simpleMessage(
      "View Patients",
    ),
    "drawer_appointments": MessageLookupByLibrary.simpleMessage("Appointments"),
    "drawer_brandName": MessageLookupByLibrary.simpleMessage("CarePulse"),
    "drawer_brandSubtitle": MessageLookupByLibrary.simpleMessage(
      "Hospital Systems",
    ),
    "drawer_dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
    "drawer_emergency": MessageLookupByLibrary.simpleMessage("Emergency"),
    "drawer_inpatient": MessageLookupByLibrary.simpleMessage("Inpatient (IPD)"),
    "drawer_insurance": MessageLookupByLibrary.simpleMessage("Insurance"),
    "drawer_laboratory": MessageLookupByLibrary.simpleMessage("Laboratory"),
    "drawer_language": MessageLookupByLibrary.simpleMessage("Language"),
    "drawer_logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "drawer_medicalRecords": MessageLookupByLibrary.simpleMessage(
      "Medical Records",
    ),
    "drawer_operatingRoom": MessageLookupByLibrary.simpleMessage(
      "Operating Room",
    ),
    "drawer_overview": MessageLookupByLibrary.simpleMessage("Overview"),
    "drawer_patients": MessageLookupByLibrary.simpleMessage("Patients"),
    "drawer_pharmacy": MessageLookupByLibrary.simpleMessage("Pharmacy"),
    "drawer_userInitials": MessageLookupByLibrary.simpleMessage("SJ"),
    "drawer_userName": MessageLookupByLibrary.simpleMessage("Dr. S. Jenkins"),
    "drawer_userRole": MessageLookupByLibrary.simpleMessage(
      "Chief Administrator",
    ),
    "emergency_add_ambulance": MessageLookupByLibrary.simpleMessage(
      "Ambulance",
    ),
    "emergency_add_arrivalMode": MessageLookupByLibrary.simpleMessage(
      "Arrival Mode",
    ),
    "emergency_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "emergency_add_chiefComplaint": MessageLookupByLibrary.simpleMessage(
      "Chief Complaint",
    ),
    "emergency_add_helicopter": MessageLookupByLibrary.simpleMessage(
      "Helicopter",
    ),
    "emergency_add_level1": MessageLookupByLibrary.simpleMessage(
      "1 - Resuscitation",
    ),
    "emergency_add_level2": MessageLookupByLibrary.simpleMessage(
      "2 - Emergent",
    ),
    "emergency_add_level3": MessageLookupByLibrary.simpleMessage("3 - Urgent"),
    "emergency_add_level4": MessageLookupByLibrary.simpleMessage(
      "4 - Less Urgent",
    ),
    "emergency_add_level5": MessageLookupByLibrary.simpleMessage(
      "5 - Non-Urgent",
    ),
    "emergency_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "emergency_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "emergency_add_police": MessageLookupByLibrary.simpleMessage("Police"),
    "emergency_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "emergency_add_title": MessageLookupByLibrary.simpleMessage(
      "Register ER Arrival",
    ),
    "emergency_add_triageLevel": MessageLookupByLibrary.simpleMessage(
      "Triage Level",
    ),
    "emergency_add_walkIn": MessageLookupByLibrary.simpleMessage("Walk-in"),
    "emergency_view_activeCalls": MessageLookupByLibrary.simpleMessage(
      "Active calls",
    ),
    "emergency_view_ambulanceCall": MessageLookupByLibrary.simpleMessage(
      "Ambulance call",
    ),
    "emergency_view_ambulanceToast": MessageLookupByLibrary.simpleMessage(
      "Ambulance call logging coming soon",
    ),
    "emergency_view_callTime": MessageLookupByLibrary.simpleMessage(
      "Call Time",
    ),
    "emergency_view_callTitle": m2,
    "emergency_view_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "emergency_view_close": MessageLookupByLibrary.simpleMessage("Close"),
    "emergency_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "emergency_view_columnCallNum": MessageLookupByLibrary.simpleMessage(
      "Call #",
    ),
    "emergency_view_columnIncident": MessageLookupByLibrary.simpleMessage(
      "Incident",
    ),
    "emergency_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "emergency_view_columnPickup": MessageLookupByLibrary.simpleMessage(
      "Pickup Location",
    ),
    "emergency_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "emergency_view_columnTime": MessageLookupByLibrary.simpleMessage("Time"),
    "emergency_view_description": MessageLookupByLibrary.simpleMessage(
      "Live triage board with ESI levels, treatment, and disposition.",
    ),
    "emergency_view_incidentType": MessageLookupByLibrary.simpleMessage(
      "Incident Type",
    ),
    "emergency_view_level1Resus": MessageLookupByLibrary.simpleMessage(
      "Level-1 (RESUS)",
    ),
    "emergency_view_notTriaged": MessageLookupByLibrary.simpleMessage(
      "Not triaged",
    ),
    "emergency_view_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "emergency_view_patientNameDisplay": m3,
    "emergency_view_recentAmbulanceCalls": MessageLookupByLibrary.simpleMessage(
      "Recent ambulance calls",
    ),
    "emergency_view_registerArrival": MessageLookupByLibrary.simpleMessage(
      "Register arrival",
    ),
    "emergency_view_statusArrived": MessageLookupByLibrary.simpleMessage(
      "Arrived at hospital",
    ),
    "emergency_view_statusCompleted": MessageLookupByLibrary.simpleMessage(
      "Completed",
    ),
    "emergency_view_statusDispatched": MessageLookupByLibrary.simpleMessage(
      "Dispatched",
    ),
    "emergency_view_statusEnRoute": MessageLookupByLibrary.simpleMessage(
      "En route",
    ),
    "emergency_view_statusOnScene": MessageLookupByLibrary.simpleMessage(
      "On scene",
    ),
    "emergency_view_statusTransporting": MessageLookupByLibrary.simpleMessage(
      "Transporting",
    ),
    "emergency_view_statusUpdatedToast": m4,
    "emergency_view_title": MessageLookupByLibrary.simpleMessage("Emergency"),
    "emergency_view_todayTotal": MessageLookupByLibrary.simpleMessage(
      "Today total",
    ),
    "emergency_view_updateStatusAction": MessageLookupByLibrary.simpleMessage(
      "Update Status",
    ),
    "emergency_view_updateStatusTitle": MessageLookupByLibrary.simpleMessage(
      "Update Ambulance Call Status",
    ),
    "emergency_view_viewAction": MessageLookupByLibrary.simpleMessage("View"),
    "home_description": MessageLookupByLibrary.simpleMessage(
      "A unified platform for hospital operations, finance, HR, supply chain, and more.",
    ),
    "home_getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
    "home_streamlineMessage": MessageLookupByLibrary.simpleMessage(
      "Streamline your hospital management with CarePulse.",
    ),
    "home_welcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Welcome to CarePulse",
    ),
    "inpatient_add_admissionDiagnosis": MessageLookupByLibrary.simpleMessage(
      "Admission Diagnosis",
    ),
    "inpatient_add_admissionType": MessageLookupByLibrary.simpleMessage(
      "Admission Type",
    ),
    "inpatient_add_bed": MessageLookupByLibrary.simpleMessage("Bed"),
    "inpatient_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "inpatient_add_elective": MessageLookupByLibrary.simpleMessage("Elective"),
    "inpatient_add_emergency": MessageLookupByLibrary.simpleMessage(
      "Emergency",
    ),
    "inpatient_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "inpatient_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "inpatient_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "inpatient_add_title": MessageLookupByLibrary.simpleMessage(
      "Admit Patient",
    ),
    "inpatient_add_transfer": MessageLookupByLibrary.simpleMessage("Transfer"),
    "inpatient_add_ward": MessageLookupByLibrary.simpleMessage("Ward"),
    "inpatient_view_activeAdmissions": MessageLookupByLibrary.simpleMessage(
      "Active admissions",
    ),
    "inpatient_view_admit": MessageLookupByLibrary.simpleMessage("Admit"),
    "inpatient_view_available": MessageLookupByLibrary.simpleMessage(
      "Available",
    ),
    "inpatient_view_bedsAvailable": MessageLookupByLibrary.simpleMessage(
      "Beds available",
    ),
    "inpatient_view_bedsOccupied": MessageLookupByLibrary.simpleMessage(
      "Beds occupied",
    ),
    "inpatient_view_blocked": MessageLookupByLibrary.simpleMessage("Blocked"),
    "inpatient_view_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "inpatient_view_cleaning": MessageLookupByLibrary.simpleMessage("Cleaning"),
    "inpatient_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "inpatient_view_columnAdmission": MessageLookupByLibrary.simpleMessage(
      "Admission #",
    ),
    "inpatient_view_columnBed": MessageLookupByLibrary.simpleMessage("Bed"),
    "inpatient_view_columnDateAdmitted": MessageLookupByLibrary.simpleMessage(
      "Date Admitted",
    ),
    "inpatient_view_columnDiagnosis": MessageLookupByLibrary.simpleMessage(
      "Diagnosis",
    ),
    "inpatient_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "inpatient_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "inpatient_view_confirmDischargeMsg": m5,
    "inpatient_view_confirmDischargeTitle":
        MessageLookupByLibrary.simpleMessage("Confirm Discharge"),
    "inpatient_view_dateFilterToast": MessageLookupByLibrary.simpleMessage(
      "Date filter coming soon",
    ),
    "inpatient_view_description": MessageLookupByLibrary.simpleMessage(
      "Wards, beds, admissions, transfers, and discharges.",
    ),
    "inpatient_view_dischargeAction": MessageLookupByLibrary.simpleMessage(
      "Discharge",
    ),
    "inpatient_view_filterByDate": MessageLookupByLibrary.simpleMessage(
      "Filter by Date",
    ),
    "inpatient_view_filterByWard": MessageLookupByLibrary.simpleMessage(
      "Filter by Ward",
    ),
    "inpatient_view_occupancyRate": MessageLookupByLibrary.simpleMessage(
      "Occupancy rate",
    ),
    "inpatient_view_occupied": MessageLookupByLibrary.simpleMessage("Occupied"),
    "inpatient_view_reasonForTransfer": MessageLookupByLibrary.simpleMessage(
      "Reason for transfer",
    ),
    "inpatient_view_title": MessageLookupByLibrary.simpleMessage(
      "Inpatient (IPD)",
    ),
    "inpatient_view_transferAction": MessageLookupByLibrary.simpleMessage(
      "Transfer",
    ),
    "inpatient_view_transferMsg": m6,
    "inpatient_view_transferTitle": MessageLookupByLibrary.simpleMessage(
      "Transfer Patient",
    ),
    "inpatient_view_wardBedMap": MessageLookupByLibrary.simpleMessage(
      "Ward bed map",
    ),
    "inpatient_view_wardFilterToast": MessageLookupByLibrary.simpleMessage(
      "Ward filter coming soon",
    ),
    "insurance_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "insurance_add_claimedAmount": MessageLookupByLibrary.simpleMessage(
      "Claimed Amount",
    ),
    "insurance_add_diagnosisCodes": MessageLookupByLibrary.simpleMessage(
      "Diagnosis Codes",
    ),
    "insurance_add_insurancePlan": MessageLookupByLibrary.simpleMessage(
      "Insurance Plan",
    ),
    "insurance_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "insurance_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "insurance_add_procedureCodes": MessageLookupByLibrary.simpleMessage(
      "Procedure Codes",
    ),
    "insurance_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "insurance_add_title": MessageLookupByLibrary.simpleMessage(
      "New Insurance Claim",
    ),
    "insurance_add_totalAmount": MessageLookupByLibrary.simpleMessage(
      "Total Amount",
    ),
    "insurance_view_active": MessageLookupByLibrary.simpleMessage("Active"),
    "insurance_view_approvedPaid": MessageLookupByLibrary.simpleMessage(
      "Approved/Paid",
    ),
    "insurance_view_cancelAction": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "insurance_view_cancelPreAuthMsg": m7,
    "insurance_view_cancelPreAuthTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel Pre-Authorization",
    ),
    "insurance_view_claimTitle": m8,
    "insurance_view_claimedAmount": MessageLookupByLibrary.simpleMessage(
      "Claimed Amount",
    ),
    "insurance_view_claimsTab": MessageLookupByLibrary.simpleMessage("Claims"),
    "insurance_view_close": MessageLookupByLibrary.simpleMessage("Close"),
    "insurance_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "insurance_view_columnAnnualLimit": MessageLookupByLibrary.simpleMessage(
      "Annual limit",
    ),
    "insurance_view_columnAuth": MessageLookupByLibrary.simpleMessage("Auth #"),
    "insurance_view_columnClaim": MessageLookupByLibrary.simpleMessage(
      "Claim #",
    ),
    "insurance_view_columnCoPay": MessageLookupByLibrary.simpleMessage(
      "Co-pay",
    ),
    "insurance_view_columnCode": MessageLookupByLibrary.simpleMessage("Code"),
    "insurance_view_columnCoverage": MessageLookupByLibrary.simpleMessage(
      "Coverage",
    ),
    "insurance_view_columnDeductible": MessageLookupByLibrary.simpleMessage(
      "Deductible",
    ),
    "insurance_view_columnEstimatedCost": MessageLookupByLibrary.simpleMessage(
      "Estimated Cost",
    ),
    "insurance_view_columnPaid": MessageLookupByLibrary.simpleMessage("Paid"),
    "insurance_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "insurance_view_columnPlan": MessageLookupByLibrary.simpleMessage("Plan"),
    "insurance_view_columnPreAuth": MessageLookupByLibrary.simpleMessage(
      "Pre-auth",
    ),
    "insurance_view_columnService": MessageLookupByLibrary.simpleMessage(
      "Service",
    ),
    "insurance_view_columnServiceDate": MessageLookupByLibrary.simpleMessage(
      "Service Date",
    ),
    "insurance_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "insurance_view_columnTotal": MessageLookupByLibrary.simpleMessage("Total"),
    "insurance_view_columnValidity": MessageLookupByLibrary.simpleMessage(
      "Validity",
    ),
    "insurance_view_description": MessageLookupByLibrary.simpleMessage(
      "Plans, claims pipeline, pre-authorizations.",
    ),
    "insurance_view_diagnosisCodes": MessageLookupByLibrary.simpleMessage(
      "Diagnosis Codes",
    ),
    "insurance_view_inactive": MessageLookupByLibrary.simpleMessage("Inactive"),
    "insurance_view_newClaim": MessageLookupByLibrary.simpleMessage(
      "New Claim",
    ),
    "insurance_view_no": MessageLookupByLibrary.simpleMessage("No"),
    "insurance_view_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "insurance_view_paidAmount": MessageLookupByLibrary.simpleMessage(
      "Paid Amount",
    ),
    "insurance_view_plansTab": MessageLookupByLibrary.simpleMessage("Plans"),
    "insurance_view_preAuthTitle": m9,
    "insurance_view_preAuthsTab": MessageLookupByLibrary.simpleMessage(
      "Pre-auths",
    ),
    "insurance_view_procedureCodes": MessageLookupByLibrary.simpleMessage(
      "Procedure Codes",
    ),
    "insurance_view_rejected": MessageLookupByLibrary.simpleMessage("Rejected"),
    "insurance_view_required": MessageLookupByLibrary.simpleMessage("Required"),
    "insurance_view_resubmitAction": MessageLookupByLibrary.simpleMessage(
      "Resubmit",
    ),
    "insurance_view_resubmitMsg": m10,
    "insurance_view_resubmitTitle": MessageLookupByLibrary.simpleMessage(
      "Resubmit Claim",
    ),
    "insurance_view_serviceRequested": MessageLookupByLibrary.simpleMessage(
      "Service Requested",
    ),
    "insurance_view_title": MessageLookupByLibrary.simpleMessage(
      "Insurance & Claims",
    ),
    "insurance_view_totalAmount": MessageLookupByLibrary.simpleMessage(
      "Total Amount",
    ),
    "insurance_view_totalClaimed": MessageLookupByLibrary.simpleMessage(
      "Total Claimed",
    ),
    "insurance_view_totalClaims": MessageLookupByLibrary.simpleMessage(
      "Total Claims",
    ),
    "insurance_view_validFrom": MessageLookupByLibrary.simpleMessage(
      "Valid From",
    ),
    "insurance_view_validTo": MessageLookupByLibrary.simpleMessage("Valid To"),
    "insurance_view_viewAction": MessageLookupByLibrary.simpleMessage("View"),
    "insurance_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "Yes, Cancel",
    ),
    "laboratory_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "laboratory_add_clinicalIndication": MessageLookupByLibrary.simpleMessage(
      "Clinical Indication",
    ),
    "laboratory_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "laboratory_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "laboratory_add_priority": MessageLookupByLibrary.simpleMessage("Priority"),
    "laboratory_add_routine": MessageLookupByLibrary.simpleMessage("Routine"),
    "laboratory_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "laboratory_add_specimenType": MessageLookupByLibrary.simpleMessage(
      "Specimen Type",
    ),
    "laboratory_add_stat": MessageLookupByLibrary.simpleMessage("STAT"),
    "laboratory_add_title": MessageLookupByLibrary.simpleMessage(
      "New Lab Order",
    ),
    "laboratory_add_urgent": MessageLookupByLibrary.simpleMessage("Urgent"),
    "laboratory_view_allPriorities": MessageLookupByLibrary.simpleMessage(
      "All priorities",
    ),
    "laboratory_view_allStatuses": MessageLookupByLibrary.simpleMessage(
      "All statuses",
    ),
    "laboratory_view_approved": MessageLookupByLibrary.simpleMessage(
      "Approved",
    ),
    "laboratory_view_cancelMsg": m11,
    "laboratory_view_cancelOrderTooltip": MessageLookupByLibrary.simpleMessage(
      "Cancel order",
    ),
    "laboratory_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel Lab Order",
    ),
    "laboratory_view_cancelled": MessageLookupByLibrary.simpleMessage(
      "Cancelled",
    ),
    "laboratory_view_clear": MessageLookupByLibrary.simpleMessage("Clear"),
    "laboratory_view_clinicalIndication": MessageLookupByLibrary.simpleMessage(
      "Clinical Indication",
    ),
    "laboratory_view_close": MessageLookupByLibrary.simpleMessage("Close"),
    "laboratory_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "laboratory_view_columnDate": MessageLookupByLibrary.simpleMessage("Date"),
    "laboratory_view_columnOrder": MessageLookupByLibrary.simpleMessage(
      "Order #",
    ),
    "laboratory_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "laboratory_view_columnPriority": MessageLookupByLibrary.simpleMessage(
      "Priority",
    ),
    "laboratory_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "laboratory_view_columnTests": MessageLookupByLibrary.simpleMessage(
      "Tests",
    ),
    "laboratory_view_completed": MessageLookupByLibrary.simpleMessage(
      "Completed",
    ),
    "laboratory_view_description": MessageLookupByLibrary.simpleMessage(
      "Test orders, sample collection, results, and approval.",
    ),
    "laboratory_view_doctorId": MessageLookupByLibrary.simpleMessage(
      "Doctor ID",
    ),
    "laboratory_view_filterByPriority": MessageLookupByLibrary.simpleMessage(
      "Filter by Priority",
    ),
    "laboratory_view_filterByStatus": MessageLookupByLibrary.simpleMessage(
      "Filter by Status",
    ),
    "laboratory_view_inProgress": MessageLookupByLibrary.simpleMessage(
      "In Progress",
    ),
    "laboratory_view_newOrder": MessageLookupByLibrary.simpleMessage(
      "New Order",
    ),
    "laboratory_view_no": MessageLookupByLibrary.simpleMessage("No"),
    "laboratory_view_orderDate": MessageLookupByLibrary.simpleMessage(
      "Order Date",
    ),
    "laboratory_view_orderDetailsTitle": m12,
    "laboratory_view_patientId": MessageLookupByLibrary.simpleMessage(
      "Patient ID",
    ),
    "laboratory_view_pending": MessageLookupByLibrary.simpleMessage("Pending"),
    "laboratory_view_routine": MessageLookupByLibrary.simpleMessage("Routine"),
    "laboratory_view_sampleCollected": MessageLookupByLibrary.simpleMessage(
      "Sample collected",
    ),
    "laboratory_view_specimenType": MessageLookupByLibrary.simpleMessage(
      "Specimen Type",
    ),
    "laboratory_view_stat": MessageLookupByLibrary.simpleMessage("STAT"),
    "laboratory_view_statPriority": MessageLookupByLibrary.simpleMessage(
      "STAT priority",
    ),
    "laboratory_view_testsTitle": MessageLookupByLibrary.simpleMessage("Tests"),
    "laboratory_view_title": MessageLookupByLibrary.simpleMessage("Laboratory"),
    "laboratory_view_totalOrders": MessageLookupByLibrary.simpleMessage(
      "Total Orders",
    ),
    "laboratory_view_urgent": MessageLookupByLibrary.simpleMessage("Urgent"),
    "laboratory_view_viewDetails": MessageLookupByLibrary.simpleMessage(
      "View details",
    ),
    "laboratory_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "Yes, Cancel",
    ),
    "medical_records_add_allergies": MessageLookupByLibrary.simpleMessage(
      "Allergies",
    ),
    "medical_records_add_assessment": MessageLookupByLibrary.simpleMessage(
      "Assessment",
    ),
    "medical_records_add_cancel": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "medical_records_add_clinicalNotes": MessageLookupByLibrary.simpleMessage(
      "Clinical Notes",
    ),
    "medical_records_add_currentMedications":
        MessageLookupByLibrary.simpleMessage("Current Medications"),
    "medical_records_add_diagnosisCode": MessageLookupByLibrary.simpleMessage(
      "Diagnosis Code",
    ),
    "medical_records_add_diagnosisDescription":
        MessageLookupByLibrary.simpleMessage("Diagnosis Description"),
    "medical_records_add_objective": MessageLookupByLibrary.simpleMessage(
      "Objective",
    ),
    "medical_records_add_patient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "medical_records_add_plan": MessageLookupByLibrary.simpleMessage("Plan"),
    "medical_records_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "medical_records_add_subjective": MessageLookupByLibrary.simpleMessage(
      "Subjective",
    ),
    "medical_records_add_title": MessageLookupByLibrary.simpleMessage(
      "Add Medical Record",
    ),
    "medical_records_view_allergies": MessageLookupByLibrary.simpleMessage(
      "Allergies",
    ),
    "medical_records_view_assessment": MessageLookupByLibrary.simpleMessage(
      "Assessment",
    ),
    "medical_records_view_cancel": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "medical_records_view_clinicalNotes": MessageLookupByLibrary.simpleMessage(
      "Clinical Notes",
    ),
    "medical_records_view_currentMedications":
        MessageLookupByLibrary.simpleMessage("Current Medications"),
    "medical_records_view_delete": MessageLookupByLibrary.simpleMessage(
      "Delete",
    ),
    "medical_records_view_deleteMsg": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this medical record?",
    ),
    "medical_records_view_deleteTitle": MessageLookupByLibrary.simpleMessage(
      "Delete Medical Record",
    ),
    "medical_records_view_description": MessageLookupByLibrary.simpleMessage(
      "View and manage patient medical records.",
    ),
    "medical_records_view_diagnosisCode": MessageLookupByLibrary.simpleMessage(
      "Diagnosis Code",
    ),
    "medical_records_view_diagnosisDescription":
        MessageLookupByLibrary.simpleMessage("Diagnosis Description"),
    "medical_records_view_doctorId": MessageLookupByLibrary.simpleMessage(
      "Doctor ID",
    ),
    "medical_records_view_newRecord": MessageLookupByLibrary.simpleMessage(
      "New Record",
    ),
    "medical_records_view_noDate": MessageLookupByLibrary.simpleMessage(
      "No Date",
    ),
    "medical_records_view_objective": MessageLookupByLibrary.simpleMessage(
      "Objective",
    ),
    "medical_records_view_patientId": MessageLookupByLibrary.simpleMessage(
      "Patient ID",
    ),
    "medical_records_view_plan": MessageLookupByLibrary.simpleMessage("Plan"),
    "medical_records_view_recordDetails": MessageLookupByLibrary.simpleMessage(
      "Record details",
    ),
    "medical_records_view_recordId": m13,
    "medical_records_view_records": MessageLookupByLibrary.simpleMessage(
      "Records",
    ),
    "medical_records_view_selectRecord": MessageLookupByLibrary.simpleMessage(
      "Select a medical record to view details",
    ),
    "medical_records_view_subjective": MessageLookupByLibrary.simpleMessage(
      "Subjective",
    ),
    "medical_records_view_title": MessageLookupByLibrary.simpleMessage(
      "Medical Records",
    ),
    "operating_room_add_anesthesiaType": MessageLookupByLibrary.simpleMessage(
      "Anesthesia Type",
    ),
    "operating_room_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "operating_room_add_duration": MessageLookupByLibrary.simpleMessage(
      "Duration (min)",
    ),
    "operating_room_add_emergency": MessageLookupByLibrary.simpleMessage(
      "Emergency",
    ),
    "operating_room_add_general": MessageLookupByLibrary.simpleMessage(
      "General",
    ),
    "operating_room_add_local": MessageLookupByLibrary.simpleMessage("Local"),
    "operating_room_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "operating_room_add_operatingRoom": MessageLookupByLibrary.simpleMessage(
      "Operating Room",
    ),
    "operating_room_add_patient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "operating_room_add_priority": MessageLookupByLibrary.simpleMessage(
      "Priority",
    ),
    "operating_room_add_procedure": MessageLookupByLibrary.simpleMessage(
      "Procedure",
    ),
    "operating_room_add_regional": MessageLookupByLibrary.simpleMessage(
      "Regional",
    ),
    "operating_room_add_routine": MessageLookupByLibrary.simpleMessage(
      "Routine",
    ),
    "operating_room_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "operating_room_add_sedation": MessageLookupByLibrary.simpleMessage(
      "Sedation",
    ),
    "operating_room_add_spinal": MessageLookupByLibrary.simpleMessage("Spinal"),
    "operating_room_add_title": MessageLookupByLibrary.simpleMessage(
      "Book Surgery",
    ),
    "operating_room_add_urgent": MessageLookupByLibrary.simpleMessage("Urgent"),
    "operating_room_view_anesthesia": MessageLookupByLibrary.simpleMessage(
      "Anesthesia",
    ),
    "operating_room_view_bookSurgery": MessageLookupByLibrary.simpleMessage(
      "Book Surgery",
    ),
    "operating_room_view_bookingTitle": m14,
    "operating_room_view_cancelAction": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "operating_room_view_cancelMsg": m15,
    "operating_room_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel Surgery",
    ),
    "operating_room_view_close": MessageLookupByLibrary.simpleMessage("Close"),
    "operating_room_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "operating_room_view_columnDate": MessageLookupByLibrary.simpleMessage(
      "Date",
    ),
    "operating_room_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "operating_room_view_columnPriority": MessageLookupByLibrary.simpleMessage(
      "Priority",
    ),
    "operating_room_view_columnProcedure": MessageLookupByLibrary.simpleMessage(
      "Procedure",
    ),
    "operating_room_view_columnRoom": MessageLookupByLibrary.simpleMessage(
      "Room",
    ),
    "operating_room_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "operating_room_view_columnTime": MessageLookupByLibrary.simpleMessage(
      "Time",
    ),
    "operating_room_view_completed": MessageLookupByLibrary.simpleMessage(
      "Completed",
    ),
    "operating_room_view_description": MessageLookupByLibrary.simpleMessage(
      "Surgery schedule, teams, safety checklists.",
    ),
    "operating_room_view_duration": MessageLookupByLibrary.simpleMessage(
      "Duration",
    ),
    "operating_room_view_durationMin": m16,
    "operating_room_view_inProgress": MessageLookupByLibrary.simpleMessage(
      "In Progress",
    ),
    "operating_room_view_no": MessageLookupByLibrary.simpleMessage("No"),
    "operating_room_view_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "operating_room_view_reasonForCancel": MessageLookupByLibrary.simpleMessage(
      "Reason for cancellation",
    ),
    "operating_room_view_scheduled": MessageLookupByLibrary.simpleMessage(
      "Scheduled",
    ),
    "operating_room_view_title": MessageLookupByLibrary.simpleMessage(
      "Operating Room",
    ),
    "operating_room_view_totalBookings": MessageLookupByLibrary.simpleMessage(
      "Total Bookings",
    ),
    "operating_room_view_viewAction": MessageLookupByLibrary.simpleMessage(
      "View",
    ),
    "operating_room_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "Yes, Cancel",
    ),
    "patients_add_activeStatus": MessageLookupByLibrary.simpleMessage(
      "Active Status",
    ),
    "patients_add_addTitle": MessageLookupByLibrary.simpleMessage(
      "Add Patient",
    ),
    "patients_add_address": MessageLookupByLibrary.simpleMessage("Address"),
    "patients_add_bloodType": MessageLookupByLibrary.simpleMessage(
      "Blood Type",
    ),
    "patients_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "patients_add_dateOfBirth": MessageLookupByLibrary.simpleMessage(
      "Date of Birth",
    ),
    "patients_add_editTitle": MessageLookupByLibrary.simpleMessage(
      "Edit Patient",
    ),
    "patients_add_email": MessageLookupByLibrary.simpleMessage("Email"),
    "patients_add_emergencyContactName": MessageLookupByLibrary.simpleMessage(
      "Emergency Contact Name",
    ),
    "patients_add_emergencyContactPhone": MessageLookupByLibrary.simpleMessage(
      "Emergency Contact Phone",
    ),
    "patients_add_emergencyContactRelationship":
        MessageLookupByLibrary.simpleMessage("Relationship"),
    "patients_add_female": MessageLookupByLibrary.simpleMessage("Female"),
    "patients_add_firstName": MessageLookupByLibrary.simpleMessage(
      "First Name",
    ),
    "patients_add_gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "patients_add_lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
    "patients_add_male": MessageLookupByLibrary.simpleMessage("Male"),
    "patients_add_mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
    "patients_add_mrn": MessageLookupByLibrary.simpleMessage("MRN"),
    "patients_add_nationalId": MessageLookupByLibrary.simpleMessage(
      "National ID",
    ),
    "patients_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "patients_add_vipStatus": MessageLookupByLibrary.simpleMessage(
      "VIP Status",
    ),
    "patients_view_active": MessageLookupByLibrary.simpleMessage("Active"),
    "patients_view_addPatient": MessageLookupByLibrary.simpleMessage(
      "Add Patient",
    ),
    "patients_view_address": MessageLookupByLibrary.simpleMessage("Address"),
    "patients_view_age": MessageLookupByLibrary.simpleMessage("Age"),
    "patients_view_allGenders": MessageLookupByLibrary.simpleMessage(
      "All genders",
    ),
    "patients_view_bloodType": MessageLookupByLibrary.simpleMessage(
      "Blood Type",
    ),
    "patients_view_close": MessageLookupByLibrary.simpleMessage("Close"),
    "patients_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "patients_view_columnBlood": MessageLookupByLibrary.simpleMessage("Blood"),
    "patients_view_columnDobAge": MessageLookupByLibrary.simpleMessage(
      "DOB / Age",
    ),
    "patients_view_columnGender": MessageLookupByLibrary.simpleMessage(
      "Gender",
    ),
    "patients_view_columnMrn": MessageLookupByLibrary.simpleMessage("MRN"),
    "patients_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "patients_view_columnPhone": MessageLookupByLibrary.simpleMessage("Phone"),
    "patients_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "patients_view_description": MessageLookupByLibrary.simpleMessage(
      "Registered patient master data — MRN, demographics, insurance, contact.",
    ),
    "patients_view_dob": MessageLookupByLibrary.simpleMessage("Date of Birth"),
    "patients_view_editAction": MessageLookupByLibrary.simpleMessage("Edit"),
    "patients_view_email": MessageLookupByLibrary.simpleMessage("Email"),
    "patients_view_emergencyContact": MessageLookupByLibrary.simpleMessage(
      "Emergency Contact",
    ),
    "patients_view_emergencyPhone": MessageLookupByLibrary.simpleMessage(
      "Emergency Phone",
    ),
    "patients_view_female": MessageLookupByLibrary.simpleMessage("Female"),
    "patients_view_genderHint": MessageLookupByLibrary.simpleMessage("Gender"),
    "patients_view_inactive": MessageLookupByLibrary.simpleMessage("Inactive"),
    "patients_view_male": MessageLookupByLibrary.simpleMessage("Male"),
    "patients_view_mobile": MessageLookupByLibrary.simpleMessage("Mobile"),
    "patients_view_name": MessageLookupByLibrary.simpleMessage("Name"),
    "patients_view_nationalId": MessageLookupByLibrary.simpleMessage(
      "National ID",
    ),
    "patients_view_no": MessageLookupByLibrary.simpleMessage("No"),
    "patients_view_patientDetails": MessageLookupByLibrary.simpleMessage(
      "Patient Details",
    ),
    "patients_view_relationship": MessageLookupByLibrary.simpleMessage(
      "Relationship",
    ),
    "patients_view_title": MessageLookupByLibrary.simpleMessage("Patients"),
    "patients_view_viewAction": MessageLookupByLibrary.simpleMessage("View"),
    "patients_view_vip": MessageLookupByLibrary.simpleMessage("VIP"),
    "patients_view_yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "pharmacy_add_addItem": MessageLookupByLibrary.simpleMessage("Add Item"),
    "pharmacy_add_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "pharmacy_add_diagnosis": MessageLookupByLibrary.simpleMessage("Diagnosis"),
    "pharmacy_add_dosage": MessageLookupByLibrary.simpleMessage("Dosage"),
    "pharmacy_add_durationDays": MessageLookupByLibrary.simpleMessage(
      "Duration (Days)",
    ),
    "pharmacy_add_frequency": MessageLookupByLibrary.simpleMessage("Frequency"),
    "pharmacy_add_instructions": MessageLookupByLibrary.simpleMessage(
      "Instructions",
    ),
    "pharmacy_add_medicationItems": MessageLookupByLibrary.simpleMessage(
      "Medication Items",
    ),
    "pharmacy_add_medicationName": MessageLookupByLibrary.simpleMessage(
      "Medication Name",
    ),
    "pharmacy_add_notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "pharmacy_add_patient": MessageLookupByLibrary.simpleMessage("Patient"),
    "pharmacy_add_save": MessageLookupByLibrary.simpleMessage("Save"),
    "pharmacy_add_title": MessageLookupByLibrary.simpleMessage(
      "New Prescription",
    ),
    "pharmacy_view_allStatuses": MessageLookupByLibrary.simpleMessage(
      "All Statuses",
    ),
    "pharmacy_view_cancelAction": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "pharmacy_view_cancelMsg": m17,
    "pharmacy_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel Prescription",
    ),
    "pharmacy_view_cancelled": MessageLookupByLibrary.simpleMessage(
      "Cancelled",
    ),
    "pharmacy_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "Actions",
    ),
    "pharmacy_view_columnDate": MessageLookupByLibrary.simpleMessage("Date"),
    "pharmacy_view_columnDiagnosis": MessageLookupByLibrary.simpleMessage(
      "Diagnosis",
    ),
    "pharmacy_view_columnItems": MessageLookupByLibrary.simpleMessage("Items"),
    "pharmacy_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "Patient",
    ),
    "pharmacy_view_columnRx": MessageLookupByLibrary.simpleMessage("Rx #"),
    "pharmacy_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "Status",
    ),
    "pharmacy_view_description": MessageLookupByLibrary.simpleMessage(
      "Prescriptions, dispensing, and medication tracking.",
    ),
    "pharmacy_view_dispenseAction": MessageLookupByLibrary.simpleMessage(
      "Dispense",
    ),
    "pharmacy_view_dispenseMsg": m18,
    "pharmacy_view_dispenseTitle": MessageLookupByLibrary.simpleMessage(
      "Dispense Prescription",
    ),
    "pharmacy_view_dispensed": MessageLookupByLibrary.simpleMessage(
      "Dispensed",
    ),
    "pharmacy_view_filterByStatus": MessageLookupByLibrary.simpleMessage(
      "Filter by status",
    ),
    "pharmacy_view_lineItems": MessageLookupByLibrary.simpleMessage(
      "Line items",
    ),
    "pharmacy_view_newPrescription": MessageLookupByLibrary.simpleMessage(
      "New Prescription",
    ),
    "pharmacy_view_no": MessageLookupByLibrary.simpleMessage("No"),
    "pharmacy_view_noItems": MessageLookupByLibrary.simpleMessage("No items"),
    "pharmacy_view_pending": MessageLookupByLibrary.simpleMessage("Pending"),
    "pharmacy_view_title": MessageLookupByLibrary.simpleMessage("Pharmacy"),
    "pharmacy_view_totalRx": MessageLookupByLibrary.simpleMessage("Total Rx"),
    "pharmacy_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "Yes, Cancel",
    ),
    "theme_switchToDark": MessageLookupByLibrary.simpleMessage(
      "Switch to Dark Mode",
    ),
    "theme_switchToLight": MessageLookupByLibrary.simpleMessage(
      "Switch to Light Mode",
    ),
    "utils_status_cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
    "utils_status_closed": MessageLookupByLibrary.simpleMessage("Closed"),
    "utils_status_completed": MessageLookupByLibrary.simpleMessage("Completed"),
    "utils_status_inTreatment": MessageLookupByLibrary.simpleMessage(
      "In treatment",
    ),
    "utils_status_notTriaged": MessageLookupByLibrary.simpleMessage(
      "Not Triaged",
    ),
    "utils_status_unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
    "utils_status_waiting": MessageLookupByLibrary.simpleMessage("Waiting"),
    "utils_triage_esiLevel": m19,
  };
}

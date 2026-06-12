// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(totalAppointments) => "${totalAppointments} في الملف";

  static String m1(totalERToday) => "${totalERToday} إجمالي اليوم";

  static String m2(number) => "مكالمة إسعاف AC-${number}";

  static String m3(patientName) => "المريض: ${patientName}";

  static String m4(status) => "تم تحديث الحالة إلى: ${status}";

  static String m5(patientName) =>
      "هل أنت متأكد أنك تريد إخراج ${patientName}؟";

  static String m6(patientName) => "نقل ${patientName} إلى سرير جديد.";

  static String m7(authNumber) =>
      "هل أنت متأكد أنك تريد إلغاء الموافقة المسبقة ${authNumber}؟";

  static String m8(claimNumber) => "مطالبة ${claimNumber}";

  static String m9(authNumber) => "موافقة مسبقة ${authNumber}";

  static String m10(claimNumber) =>
      "هل أنت متأكد أنك تريد إعادة إرسال المطالبة ${claimNumber}؟";

  static String m11(orderNumber) =>
      "هل أنت متأكد أنك تريد إلغاء الطلب ${orderNumber}؟";

  static String m12(orderNumber) => "طلب مختبر ${orderNumber}";

  static String m13(id) => "رقم السجل: ${id}";

  static String m14(procedure) => "حجز جراحة - ${procedure}";

  static String m15(patient) => "إلغاء الجراحة للمريض ${patient}؟";

  static String m16(minutes) => "${minutes} دقائق";

  static String m17(rxNumber) =>
      "هل أنت متأكد أنك تريد إلغاء الوصفة الطبية ${rxNumber}؟";

  static String m18(rxNumber) => "هل تريد صرف الوصفة الطبية ${rxNumber}؟";

  static String m19(triageLevel) => "ESI ${triageLevel}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appointments_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "appointments_add_consultation": MessageLookupByLibrary.simpleMessage(
      "استشارة",
    ),
    "appointments_add_followUp": MessageLookupByLibrary.simpleMessage("متابعة"),
    "appointments_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "appointments_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "appointments_add_procedure": MessageLookupByLibrary.simpleMessage("إجراء"),
    "appointments_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "appointments_add_title": MessageLookupByLibrary.simpleMessage(
      "إضافة موعد",
    ),
    "appointments_add_type": MessageLookupByLibrary.simpleMessage("نوع الموعد"),
    "appointments_view_allTypes": MessageLookupByLibrary.simpleMessage(
      "جميع الأنواع",
    ),
    "appointments_view_apptNumber": MessageLookupByLibrary.simpleMessage(
      "رقم الموعد",
    ),
    "appointments_view_board": MessageLookupByLibrary.simpleMessage("لوحة"),
    "appointments_view_clear": MessageLookupByLibrary.simpleMessage("مسح"),
    "appointments_view_consultation": MessageLookupByLibrary.simpleMessage(
      "استشارة",
    ),
    "appointments_view_dateTime": MessageLookupByLibrary.simpleMessage(
      "التاريخ / الوقت",
    ),
    "appointments_view_description": MessageLookupByLibrary.simpleMessage(
      "جدولة وتسجيل وصول وإكمال زيارات المرضى.",
    ),
    "appointments_view_doctor": MessageLookupByLibrary.simpleMessage("الطبيب"),
    "appointments_view_followUp": MessageLookupByLibrary.simpleMessage(
      "متابعة",
    ),
    "appointments_view_list": MessageLookupByLibrary.simpleMessage("قائمة"),
    "appointments_view_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "appointments_view_procedure": MessageLookupByLibrary.simpleMessage(
      "إجراء",
    ),
    "appointments_view_schedule": MessageLookupByLibrary.simpleMessage("جدولة"),
    "appointments_view_status": MessageLookupByLibrary.simpleMessage("الحالة"),
    "appointments_view_title": MessageLookupByLibrary.simpleMessage("المواعيد"),
    "appointments_view_type": MessageLookupByLibrary.simpleMessage("النوع"),
    "dashboard_view_acrossAllWards": MessageLookupByLibrary.simpleMessage(
      "عبر جميع الأجنحة",
    ),
    "dashboard_view_activeErCard": MessageLookupByLibrary.simpleMessage(
      "مرضى الطوارئ النشطين",
    ),
    "dashboard_view_bedOccupancyCard": MessageLookupByLibrary.simpleMessage(
      "إشغال الأسرة",
    ),
    "dashboard_view_bedsFree": MessageLookupByLibrary.simpleMessage(
      "أسرة شاغرة",
    ),
    "dashboard_view_columnCall": MessageLookupByLibrary.simpleMessage(
      "رقم المكالمة",
    ),
    "dashboard_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "dashboard_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "dashboard_view_columnTime": MessageLookupByLibrary.simpleMessage("الوقت"),
    "dashboard_view_columnTriage": MessageLookupByLibrary.simpleMessage(
      "الفرز",
    ),
    "dashboard_view_columnType": MessageLookupByLibrary.simpleMessage("النوع"),
    "dashboard_view_description": MessageLookupByLibrary.simpleMessage(
      "نظرة عامة حية عبر دورة حياة المريض، والطوارئ، والمرضى الداخليين، وغرفة العمليات.",
    ),
    "dashboard_view_erActive": MessageLookupByLibrary.simpleMessage(
      "طوارئ نشطة",
    ),
    "dashboard_view_insuranceClaimsCard": MessageLookupByLibrary.simpleMessage(
      "مطالبات التأمين",
    ),
    "dashboard_view_manageClaims": MessageLookupByLibrary.simpleMessage(
      "إدارة المطالبات",
    ),
    "dashboard_view_manageIpd": MessageLookupByLibrary.simpleMessage(
      "إدارة المرضى الداخليين",
    ),
    "dashboard_view_newAppointment": MessageLookupByLibrary.simpleMessage(
      "موعد جديد",
    ),
    "dashboard_view_openEr": MessageLookupByLibrary.simpleMessage(
      "فتح الطوارئ",
    ),
    "dashboard_view_title": MessageLookupByLibrary.simpleMessage(
      "لوحة القيادة",
    ),
    "dashboard_view_todayAppointments": MessageLookupByLibrary.simpleMessage(
      "مواعيد اليوم",
    ),
    "dashboard_view_todaysAppointmentsCard":
        MessageLookupByLibrary.simpleMessage("مواعيد اليوم"),
    "dashboard_view_totalAppointmentsOnFile": m0,
    "dashboard_view_totalErToday": m1,
    "dashboard_view_totalPatients": MessageLookupByLibrary.simpleMessage(
      "إجمالي المرضى",
    ),
    "dashboard_view_viewAll": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "dashboard_view_viewPatients": MessageLookupByLibrary.simpleMessage(
      "عرض المرضى",
    ),
    "drawer_appointments": MessageLookupByLibrary.simpleMessage("المواعيد"),
    "drawer_dashboard": MessageLookupByLibrary.simpleMessage("لوحة القيادة"),
    "drawer_emergency": MessageLookupByLibrary.simpleMessage("الطوارئ"),
    "drawer_inpatient": MessageLookupByLibrary.simpleMessage("التنويم (IPD)"),
    "drawer_insurance": MessageLookupByLibrary.simpleMessage("التأمين"),
    "drawer_laboratory": MessageLookupByLibrary.simpleMessage("المختبر"),
    "drawer_logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "drawer_medicalRecords": MessageLookupByLibrary.simpleMessage(
      "السجلات الطبية",
    ),
    "drawer_operatingRoom": MessageLookupByLibrary.simpleMessage(
      "غرفة العمليات",
    ),
    "drawer_overview": MessageLookupByLibrary.simpleMessage("نظرة عامة"),
    "drawer_patients": MessageLookupByLibrary.simpleMessage("المرضى"),
    "drawer_pharmacy": MessageLookupByLibrary.simpleMessage("الصيدلية"),
    "emergency_add_ambulance": MessageLookupByLibrary.simpleMessage("إسعاف"),
    "emergency_add_arrivalMode": MessageLookupByLibrary.simpleMessage(
      "طريقة الوصول",
    ),
    "emergency_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "emergency_add_chiefComplaint": MessageLookupByLibrary.simpleMessage(
      "الشكوى الرئيسية",
    ),
    "emergency_add_helicopter": MessageLookupByLibrary.simpleMessage(
      "طائرة هليكوبتر",
    ),
    "emergency_add_level1": MessageLookupByLibrary.simpleMessage("1 - إنعاش"),
    "emergency_add_level2": MessageLookupByLibrary.simpleMessage("2 - طارئ"),
    "emergency_add_level3": MessageLookupByLibrary.simpleMessage("3 - عاجل"),
    "emergency_add_level4": MessageLookupByLibrary.simpleMessage(
      "4 - أقل استعجالاً",
    ),
    "emergency_add_level5": MessageLookupByLibrary.simpleMessage(
      "5 - غير عاجل",
    ),
    "emergency_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "emergency_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "emergency_add_police": MessageLookupByLibrary.simpleMessage("شرطة"),
    "emergency_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "emergency_add_title": MessageLookupByLibrary.simpleMessage(
      "تسجيل وصول للطوارئ",
    ),
    "emergency_add_triageLevel": MessageLookupByLibrary.simpleMessage(
      "مستوى الفرز",
    ),
    "emergency_add_walkIn": MessageLookupByLibrary.simpleMessage("مشياً"),
    "emergency_view_activeCalls": MessageLookupByLibrary.simpleMessage(
      "مكالمات نشطة",
    ),
    "emergency_view_ambulanceCall": MessageLookupByLibrary.simpleMessage(
      "مكالمة إسعاف",
    ),
    "emergency_view_ambulanceToast": MessageLookupByLibrary.simpleMessage(
      "تسجيل مكالمات سيارة الإسعاف قريبا",
    ),
    "emergency_view_callTime": MessageLookupByLibrary.simpleMessage(
      "وقت المكالمة",
    ),
    "emergency_view_callTitle": m2,
    "emergency_view_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "emergency_view_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "emergency_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "emergency_view_columnCallNum": MessageLookupByLibrary.simpleMessage(
      "رقم المكالمة",
    ),
    "emergency_view_columnIncident": MessageLookupByLibrary.simpleMessage(
      "الحادث",
    ),
    "emergency_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "emergency_view_columnPickup": MessageLookupByLibrary.simpleMessage(
      "موقع الالتقاط",
    ),
    "emergency_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "emergency_view_columnTime": MessageLookupByLibrary.simpleMessage("الوقت"),
    "emergency_view_description": MessageLookupByLibrary.simpleMessage(
      "لوحة فرز حية للمرضى ومستويات الطوارئ.",
    ),
    "emergency_view_incidentType": MessageLookupByLibrary.simpleMessage(
      "نوع الحادث",
    ),
    "emergency_view_level1Resus": MessageLookupByLibrary.simpleMessage(
      "المستوى-1 (إنعاش)",
    ),
    "emergency_view_notTriaged": MessageLookupByLibrary.simpleMessage(
      "غير مفروز",
    ),
    "emergency_view_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "emergency_view_patientNameDisplay": m3,
    "emergency_view_recentAmbulanceCalls": MessageLookupByLibrary.simpleMessage(
      "مكالمات إسعاف حديثة",
    ),
    "emergency_view_registerArrival": MessageLookupByLibrary.simpleMessage(
      "تسجيل وصول",
    ),
    "emergency_view_statusArrived": MessageLookupByLibrary.simpleMessage(
      "وصل إلى المستشفى",
    ),
    "emergency_view_statusCompleted": MessageLookupByLibrary.simpleMessage(
      "مكتمل",
    ),
    "emergency_view_statusDispatched": MessageLookupByLibrary.simpleMessage(
      "مرسل",
    ),
    "emergency_view_statusEnRoute": MessageLookupByLibrary.simpleMessage(
      "في الطريق",
    ),
    "emergency_view_statusOnScene": MessageLookupByLibrary.simpleMessage(
      "في الموقع",
    ),
    "emergency_view_statusTransporting": MessageLookupByLibrary.simpleMessage(
      "نقل",
    ),
    "emergency_view_statusUpdatedToast": m4,
    "emergency_view_title": MessageLookupByLibrary.simpleMessage("الطوارئ"),
    "emergency_view_todayTotal": MessageLookupByLibrary.simpleMessage(
      "إجمالي اليوم",
    ),
    "emergency_view_updateStatusAction": MessageLookupByLibrary.simpleMessage(
      "تحديث الحالة",
    ),
    "emergency_view_updateStatusTitle": MessageLookupByLibrary.simpleMessage(
      "تحديث حالة مكالمة الإسعاف",
    ),
    "emergency_view_viewAction": MessageLookupByLibrary.simpleMessage("عرض"),
    "inpatient_add_admissionDiagnosis": MessageLookupByLibrary.simpleMessage(
      "تشخيص الدخول",
    ),
    "inpatient_add_admissionType": MessageLookupByLibrary.simpleMessage(
      "نوع الدخول",
    ),
    "inpatient_add_bed": MessageLookupByLibrary.simpleMessage("السرير"),
    "inpatient_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "inpatient_add_elective": MessageLookupByLibrary.simpleMessage("اختياري"),
    "inpatient_add_emergency": MessageLookupByLibrary.simpleMessage("طوارئ"),
    "inpatient_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "inpatient_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "inpatient_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "inpatient_add_title": MessageLookupByLibrary.simpleMessage("دخول مريض"),
    "inpatient_add_transfer": MessageLookupByLibrary.simpleMessage("نقل"),
    "inpatient_add_ward": MessageLookupByLibrary.simpleMessage("الجناح"),
    "inpatient_view_activeAdmissions": MessageLookupByLibrary.simpleMessage(
      "الدخول النشط",
    ),
    "inpatient_view_admit": MessageLookupByLibrary.simpleMessage("دخول"),
    "inpatient_view_available": MessageLookupByLibrary.simpleMessage("متاح"),
    "inpatient_view_bedsAvailable": MessageLookupByLibrary.simpleMessage(
      "الأسرة المتاحة",
    ),
    "inpatient_view_bedsOccupied": MessageLookupByLibrary.simpleMessage(
      "الأسرة المشغولة",
    ),
    "inpatient_view_blocked": MessageLookupByLibrary.simpleMessage("محظور"),
    "inpatient_view_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "inpatient_view_cleaning": MessageLookupByLibrary.simpleMessage("تنظيف"),
    "inpatient_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "inpatient_view_columnAdmission": MessageLookupByLibrary.simpleMessage(
      "رقم الدخول",
    ),
    "inpatient_view_columnBed": MessageLookupByLibrary.simpleMessage("السرير"),
    "inpatient_view_columnDateAdmitted": MessageLookupByLibrary.simpleMessage(
      "تاريخ الدخول",
    ),
    "inpatient_view_columnDiagnosis": MessageLookupByLibrary.simpleMessage(
      "التشخيص",
    ),
    "inpatient_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "inpatient_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "inpatient_view_confirmDischargeMsg": m5,
    "inpatient_view_confirmDischargeTitle":
        MessageLookupByLibrary.simpleMessage("تأكيد الخروج"),
    "inpatient_view_dateFilterToast": MessageLookupByLibrary.simpleMessage(
      "تصفية التاريخ قريبا",
    ),
    "inpatient_view_description": MessageLookupByLibrary.simpleMessage(
      "الأجنحة، الأسرة، الدخول، النقل، والخروج.",
    ),
    "inpatient_view_dischargeAction": MessageLookupByLibrary.simpleMessage(
      "خروج",
    ),
    "inpatient_view_filterByDate": MessageLookupByLibrary.simpleMessage(
      "تصفية حسب التاريخ",
    ),
    "inpatient_view_filterByWard": MessageLookupByLibrary.simpleMessage(
      "تصفية حسب الجناح",
    ),
    "inpatient_view_occupancyRate": MessageLookupByLibrary.simpleMessage(
      "معدل الإشغال",
    ),
    "inpatient_view_occupied": MessageLookupByLibrary.simpleMessage("مشغول"),
    "inpatient_view_reasonForTransfer": MessageLookupByLibrary.simpleMessage(
      "سبب النقل",
    ),
    "inpatient_view_title": MessageLookupByLibrary.simpleMessage(
      "المرضى الداخليين",
    ),
    "inpatient_view_transferAction": MessageLookupByLibrary.simpleMessage(
      "نقل",
    ),
    "inpatient_view_transferMsg": m6,
    "inpatient_view_transferTitle": MessageLookupByLibrary.simpleMessage(
      "نقل المريض",
    ),
    "inpatient_view_wardBedMap": MessageLookupByLibrary.simpleMessage(
      "خريطة أسرة الأجنحة",
    ),
    "inpatient_view_wardFilterToast": MessageLookupByLibrary.simpleMessage(
      "تصفية الأجنحة قريبا",
    ),
    "insurance_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "insurance_add_claimedAmount": MessageLookupByLibrary.simpleMessage(
      "المبلغ المطالب به",
    ),
    "insurance_add_diagnosisCodes": MessageLookupByLibrary.simpleMessage(
      "رموز التشخيص",
    ),
    "insurance_add_insurancePlan": MessageLookupByLibrary.simpleMessage(
      "خطة التأمين",
    ),
    "insurance_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "insurance_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "insurance_add_procedureCodes": MessageLookupByLibrary.simpleMessage(
      "رموز الإجراءات",
    ),
    "insurance_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "insurance_add_title": MessageLookupByLibrary.simpleMessage(
      "مطالبة تأمين جديدة",
    ),
    "insurance_add_totalAmount": MessageLookupByLibrary.simpleMessage(
      "إجمالي المبلغ",
    ),
    "insurance_view_active": MessageLookupByLibrary.simpleMessage("نشط"),
    "insurance_view_approvedPaid": MessageLookupByLibrary.simpleMessage(
      "معتمد/مدفوع",
    ),
    "insurance_view_cancelAction": MessageLookupByLibrary.simpleMessage(
      "إلغاء",
    ),
    "insurance_view_cancelPreAuthMsg": m7,
    "insurance_view_cancelPreAuthTitle": MessageLookupByLibrary.simpleMessage(
      "إلغاء الموافقة المسبقة",
    ),
    "insurance_view_claimTitle": m8,
    "insurance_view_claimedAmount": MessageLookupByLibrary.simpleMessage(
      "المبلغ المطالب به",
    ),
    "insurance_view_claimsTab": MessageLookupByLibrary.simpleMessage(
      "المطالبات",
    ),
    "insurance_view_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "insurance_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "insurance_view_columnAnnualLimit": MessageLookupByLibrary.simpleMessage(
      "الحد السنوي",
    ),
    "insurance_view_columnAuth": MessageLookupByLibrary.simpleMessage(
      "رقم التفويض",
    ),
    "insurance_view_columnClaim": MessageLookupByLibrary.simpleMessage(
      "رقم المطالبة",
    ),
    "insurance_view_columnCoPay": MessageLookupByLibrary.simpleMessage(
      "الدفع المشترك",
    ),
    "insurance_view_columnCode": MessageLookupByLibrary.simpleMessage("الرمز"),
    "insurance_view_columnCoverage": MessageLookupByLibrary.simpleMessage(
      "التغطية",
    ),
    "insurance_view_columnDeductible": MessageLookupByLibrary.simpleMessage(
      "الخصم",
    ),
    "insurance_view_columnEstimatedCost": MessageLookupByLibrary.simpleMessage(
      "التكلفة التقديرية",
    ),
    "insurance_view_columnPaid": MessageLookupByLibrary.simpleMessage(
      "المدفوع",
    ),
    "insurance_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "insurance_view_columnPlan": MessageLookupByLibrary.simpleMessage("الخطة"),
    "insurance_view_columnPreAuth": MessageLookupByLibrary.simpleMessage(
      "موافقة مسبقة",
    ),
    "insurance_view_columnService": MessageLookupByLibrary.simpleMessage(
      "الخدمة",
    ),
    "insurance_view_columnServiceDate": MessageLookupByLibrary.simpleMessage(
      "تاريخ الخدمة",
    ),
    "insurance_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "insurance_view_columnTotal": MessageLookupByLibrary.simpleMessage(
      "الإجمالي",
    ),
    "insurance_view_columnValidity": MessageLookupByLibrary.simpleMessage(
      "الصلاحية",
    ),
    "insurance_view_description": MessageLookupByLibrary.simpleMessage(
      "الخطط، مسار المطالبات، الموافقات المسبقة.",
    ),
    "insurance_view_diagnosisCodes": MessageLookupByLibrary.simpleMessage(
      "رموز التشخيص",
    ),
    "insurance_view_inactive": MessageLookupByLibrary.simpleMessage("غير نشط"),
    "insurance_view_newClaim": MessageLookupByLibrary.simpleMessage(
      "مطالبة جديدة",
    ),
    "insurance_view_no": MessageLookupByLibrary.simpleMessage("لا"),
    "insurance_view_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "insurance_view_paidAmount": MessageLookupByLibrary.simpleMessage(
      "المبلغ المدفوع",
    ),
    "insurance_view_plansTab": MessageLookupByLibrary.simpleMessage("الخطط"),
    "insurance_view_preAuthTitle": m9,
    "insurance_view_preAuthsTab": MessageLookupByLibrary.simpleMessage(
      "موافقات مسبقة",
    ),
    "insurance_view_procedureCodes": MessageLookupByLibrary.simpleMessage(
      "رموز الإجراءات",
    ),
    "insurance_view_rejected": MessageLookupByLibrary.simpleMessage("مرفوض"),
    "insurance_view_required": MessageLookupByLibrary.simpleMessage("مطلوب"),
    "insurance_view_resubmitAction": MessageLookupByLibrary.simpleMessage(
      "إعادة إرسال",
    ),
    "insurance_view_resubmitMsg": m10,
    "insurance_view_resubmitTitle": MessageLookupByLibrary.simpleMessage(
      "إعادة إرسال المطالبة",
    ),
    "insurance_view_serviceRequested": MessageLookupByLibrary.simpleMessage(
      "الخدمة المطلوبة",
    ),
    "insurance_view_title": MessageLookupByLibrary.simpleMessage(
      "التأمين والمطالبات",
    ),
    "insurance_view_totalAmount": MessageLookupByLibrary.simpleMessage(
      "إجمالي المبلغ",
    ),
    "insurance_view_totalClaimed": MessageLookupByLibrary.simpleMessage(
      "إجمالي المطالب به",
    ),
    "insurance_view_totalClaims": MessageLookupByLibrary.simpleMessage(
      "إجمالي المطالبات",
    ),
    "insurance_view_validFrom": MessageLookupByLibrary.simpleMessage("صالح من"),
    "insurance_view_validTo": MessageLookupByLibrary.simpleMessage("صالح إلى"),
    "insurance_view_viewAction": MessageLookupByLibrary.simpleMessage("عرض"),
    "insurance_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "نعم، إلغاء",
    ),
    "laboratory_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "laboratory_add_clinicalIndication": MessageLookupByLibrary.simpleMessage(
      "الدلالة السريرية",
    ),
    "laboratory_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "laboratory_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "laboratory_add_priority": MessageLookupByLibrary.simpleMessage("الأولوية"),
    "laboratory_add_routine": MessageLookupByLibrary.simpleMessage("روتيني"),
    "laboratory_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "laboratory_add_specimenType": MessageLookupByLibrary.simpleMessage(
      "نوع العينة",
    ),
    "laboratory_add_stat": MessageLookupByLibrary.simpleMessage("حرج STAT"),
    "laboratory_add_title": MessageLookupByLibrary.simpleMessage(
      "طلب مختبر جديد",
    ),
    "laboratory_add_urgent": MessageLookupByLibrary.simpleMessage("عاجل"),
    "laboratory_view_allPriorities": MessageLookupByLibrary.simpleMessage(
      "جميع الأولويات",
    ),
    "laboratory_view_allStatuses": MessageLookupByLibrary.simpleMessage(
      "جميع الحالات",
    ),
    "laboratory_view_approved": MessageLookupByLibrary.simpleMessage("معتمد"),
    "laboratory_view_cancelMsg": m11,
    "laboratory_view_cancelOrderTooltip": MessageLookupByLibrary.simpleMessage(
      "إلغاء الطلب",
    ),
    "laboratory_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "إلغاء طلب المختبر",
    ),
    "laboratory_view_cancelled": MessageLookupByLibrary.simpleMessage("ملغى"),
    "laboratory_view_clear": MessageLookupByLibrary.simpleMessage("مسح"),
    "laboratory_view_clinicalIndication": MessageLookupByLibrary.simpleMessage(
      "الدلالة السريرية",
    ),
    "laboratory_view_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "laboratory_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "laboratory_view_columnDate": MessageLookupByLibrary.simpleMessage(
      "التاريخ",
    ),
    "laboratory_view_columnOrder": MessageLookupByLibrary.simpleMessage(
      "رقم الطلب",
    ),
    "laboratory_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "laboratory_view_columnPriority": MessageLookupByLibrary.simpleMessage(
      "الأولوية",
    ),
    "laboratory_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "laboratory_view_columnTests": MessageLookupByLibrary.simpleMessage(
      "التحاليل",
    ),
    "laboratory_view_completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "laboratory_view_description": MessageLookupByLibrary.simpleMessage(
      "طلبات الاختبار، جمع العينات، النتائج، والموافقات.",
    ),
    "laboratory_view_doctorId": MessageLookupByLibrary.simpleMessage(
      "رقم الطبيب",
    ),
    "laboratory_view_filterByPriority": MessageLookupByLibrary.simpleMessage(
      "تصفية حسب الأولوية",
    ),
    "laboratory_view_filterByStatus": MessageLookupByLibrary.simpleMessage(
      "تصفية حسب الحالة",
    ),
    "laboratory_view_inProgress": MessageLookupByLibrary.simpleMessage(
      "قيد التنفيذ",
    ),
    "laboratory_view_newOrder": MessageLookupByLibrary.simpleMessage(
      "طلب جديد",
    ),
    "laboratory_view_no": MessageLookupByLibrary.simpleMessage("لا"),
    "laboratory_view_orderDate": MessageLookupByLibrary.simpleMessage(
      "تاريخ الطلب",
    ),
    "laboratory_view_orderDetailsTitle": m12,
    "laboratory_view_patientId": MessageLookupByLibrary.simpleMessage(
      "رقم المريض",
    ),
    "laboratory_view_pending": MessageLookupByLibrary.simpleMessage(
      "قيد الانتظار",
    ),
    "laboratory_view_routine": MessageLookupByLibrary.simpleMessage("روتيني"),
    "laboratory_view_sampleCollected": MessageLookupByLibrary.simpleMessage(
      "تم جمع العينة",
    ),
    "laboratory_view_specimenType": MessageLookupByLibrary.simpleMessage(
      "نوع العينة",
    ),
    "laboratory_view_stat": MessageLookupByLibrary.simpleMessage("حرج STAT"),
    "laboratory_view_statPriority": MessageLookupByLibrary.simpleMessage(
      "أولوية STAT",
    ),
    "laboratory_view_testsTitle": MessageLookupByLibrary.simpleMessage(
      "التحاليل",
    ),
    "laboratory_view_title": MessageLookupByLibrary.simpleMessage("المختبر"),
    "laboratory_view_totalOrders": MessageLookupByLibrary.simpleMessage(
      "إجمالي الطلبات",
    ),
    "laboratory_view_urgent": MessageLookupByLibrary.simpleMessage("عاجل"),
    "laboratory_view_viewDetails": MessageLookupByLibrary.simpleMessage(
      "عرض التفاصيل",
    ),
    "laboratory_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "نعم، إلغاء",
    ),
    "medical_records_add_allergies": MessageLookupByLibrary.simpleMessage(
      "الحساسية",
    ),
    "medical_records_add_assessment": MessageLookupByLibrary.simpleMessage(
      "التقييم",
    ),
    "medical_records_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "medical_records_add_clinicalNotes": MessageLookupByLibrary.simpleMessage(
      "ملاحظات سريرية",
    ),
    "medical_records_add_currentMedications":
        MessageLookupByLibrary.simpleMessage("الأدوية الحالية"),
    "medical_records_add_diagnosisCode": MessageLookupByLibrary.simpleMessage(
      "رمز التشخيص",
    ),
    "medical_records_add_diagnosisDescription":
        MessageLookupByLibrary.simpleMessage("وصف التشخيص"),
    "medical_records_add_objective": MessageLookupByLibrary.simpleMessage(
      "الفحص",
    ),
    "medical_records_add_patient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "medical_records_add_plan": MessageLookupByLibrary.simpleMessage("الخطة"),
    "medical_records_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "medical_records_add_subjective": MessageLookupByLibrary.simpleMessage(
      "الشكوى",
    ),
    "medical_records_add_title": MessageLookupByLibrary.simpleMessage(
      "إضافة سجل طبي",
    ),
    "medical_records_view_allergies": MessageLookupByLibrary.simpleMessage(
      "الحساسية",
    ),
    "medical_records_view_assessment": MessageLookupByLibrary.simpleMessage(
      "التقييم",
    ),
    "medical_records_view_cancel": MessageLookupByLibrary.simpleMessage(
      "إلغاء",
    ),
    "medical_records_view_clinicalNotes": MessageLookupByLibrary.simpleMessage(
      "ملاحظات سريرية",
    ),
    "medical_records_view_currentMedications":
        MessageLookupByLibrary.simpleMessage("الأدوية الحالية"),
    "medical_records_view_delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "medical_records_view_deleteMsg": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد أنك تريد حذف هذا السجل الطبي؟",
    ),
    "medical_records_view_deleteTitle": MessageLookupByLibrary.simpleMessage(
      "حذف السجل الطبي",
    ),
    "medical_records_view_description": MessageLookupByLibrary.simpleMessage(
      "عرض وإدارة السجلات الطبية للمرضى.",
    ),
    "medical_records_view_diagnosisCode": MessageLookupByLibrary.simpleMessage(
      "رمز التشخيص",
    ),
    "medical_records_view_diagnosisDescription":
        MessageLookupByLibrary.simpleMessage("وصف التشخيص"),
    "medical_records_view_doctorId": MessageLookupByLibrary.simpleMessage(
      "رقم الطبيب",
    ),
    "medical_records_view_newRecord": MessageLookupByLibrary.simpleMessage(
      "سجل جديد",
    ),
    "medical_records_view_noDate": MessageLookupByLibrary.simpleMessage(
      "لا يوجد تاريخ",
    ),
    "medical_records_view_objective": MessageLookupByLibrary.simpleMessage(
      "الفحص",
    ),
    "medical_records_view_patientId": MessageLookupByLibrary.simpleMessage(
      "رقم المريض",
    ),
    "medical_records_view_plan": MessageLookupByLibrary.simpleMessage("الخطة"),
    "medical_records_view_recordDetails": MessageLookupByLibrary.simpleMessage(
      "تفاصيل السجل",
    ),
    "medical_records_view_recordId": m13,
    "medical_records_view_records": MessageLookupByLibrary.simpleMessage(
      "السجلات",
    ),
    "medical_records_view_selectRecord": MessageLookupByLibrary.simpleMessage(
      "حدد سجلاً طبياً لعرض التفاصيل",
    ),
    "medical_records_view_subjective": MessageLookupByLibrary.simpleMessage(
      "الشكوى",
    ),
    "medical_records_view_title": MessageLookupByLibrary.simpleMessage(
      "السجلات الطبية",
    ),
    "operating_room_add_anesthesiaType": MessageLookupByLibrary.simpleMessage(
      "نوع التخدير",
    ),
    "operating_room_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "operating_room_add_duration": MessageLookupByLibrary.simpleMessage(
      "المدة (دقائق)",
    ),
    "operating_room_add_emergency": MessageLookupByLibrary.simpleMessage(
      "طوارئ",
    ),
    "operating_room_add_general": MessageLookupByLibrary.simpleMessage("عام"),
    "operating_room_add_local": MessageLookupByLibrary.simpleMessage("موضعي"),
    "operating_room_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "operating_room_add_operatingRoom": MessageLookupByLibrary.simpleMessage(
      "غرفة العمليات",
    ),
    "operating_room_add_patient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "operating_room_add_priority": MessageLookupByLibrary.simpleMessage(
      "الأولوية",
    ),
    "operating_room_add_procedure": MessageLookupByLibrary.simpleMessage(
      "الإجراء",
    ),
    "operating_room_add_regional": MessageLookupByLibrary.simpleMessage("ناحي"),
    "operating_room_add_routine": MessageLookupByLibrary.simpleMessage(
      "روتينية",
    ),
    "operating_room_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "operating_room_add_sedation": MessageLookupByLibrary.simpleMessage(
      "تهدئة",
    ),
    "operating_room_add_spinal": MessageLookupByLibrary.simpleMessage("نصفي"),
    "operating_room_add_title": MessageLookupByLibrary.simpleMessage(
      "حجز جراحة",
    ),
    "operating_room_add_urgent": MessageLookupByLibrary.simpleMessage("عاجلة"),
    "operating_room_view_anesthesia": MessageLookupByLibrary.simpleMessage(
      "التخدير",
    ),
    "operating_room_view_bookSurgery": MessageLookupByLibrary.simpleMessage(
      "حجز جراحة",
    ),
    "operating_room_view_bookingTitle": m14,
    "operating_room_view_cancelAction": MessageLookupByLibrary.simpleMessage(
      "إلغاء",
    ),
    "operating_room_view_cancelMsg": m15,
    "operating_room_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "إلغاء الجراحة",
    ),
    "operating_room_view_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "operating_room_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "operating_room_view_columnDate": MessageLookupByLibrary.simpleMessage(
      "التاريخ",
    ),
    "operating_room_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "operating_room_view_columnPriority": MessageLookupByLibrary.simpleMessage(
      "الأولوية",
    ),
    "operating_room_view_columnProcedure": MessageLookupByLibrary.simpleMessage(
      "الإجراء",
    ),
    "operating_room_view_columnRoom": MessageLookupByLibrary.simpleMessage(
      "الغرفة",
    ),
    "operating_room_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "operating_room_view_columnTime": MessageLookupByLibrary.simpleMessage(
      "الوقت",
    ),
    "operating_room_view_completed": MessageLookupByLibrary.simpleMessage(
      "مكتمل",
    ),
    "operating_room_view_description": MessageLookupByLibrary.simpleMessage(
      "جدول الجراحة، الفرق، قوائم السلامة.",
    ),
    "operating_room_view_duration": MessageLookupByLibrary.simpleMessage(
      "المدة",
    ),
    "operating_room_view_durationMin": m16,
    "operating_room_view_inProgress": MessageLookupByLibrary.simpleMessage(
      "قيد التنفيذ",
    ),
    "operating_room_view_no": MessageLookupByLibrary.simpleMessage("لا"),
    "operating_room_view_notes": MessageLookupByLibrary.simpleMessage(
      "ملاحظات",
    ),
    "operating_room_view_reasonForCancel": MessageLookupByLibrary.simpleMessage(
      "سبب الإلغاء",
    ),
    "operating_room_view_scheduled": MessageLookupByLibrary.simpleMessage(
      "مجدول",
    ),
    "operating_room_view_title": MessageLookupByLibrary.simpleMessage(
      "غرفة العمليات",
    ),
    "operating_room_view_totalBookings": MessageLookupByLibrary.simpleMessage(
      "إجمالي الحجوزات",
    ),
    "operating_room_view_viewAction": MessageLookupByLibrary.simpleMessage(
      "عرض",
    ),
    "operating_room_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "نعم، إلغاء",
    ),
    "patients_add_activeStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة (نشط)",
    ),
    "patients_add_addTitle": MessageLookupByLibrary.simpleMessage("إضافة مريض"),
    "patients_add_address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "patients_add_bloodType": MessageLookupByLibrary.simpleMessage(
      "فصيلة الدم",
    ),
    "patients_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "patients_add_dateOfBirth": MessageLookupByLibrary.simpleMessage(
      "تاريخ الميلاد",
    ),
    "patients_add_editTitle": MessageLookupByLibrary.simpleMessage(
      "تعديل بيانات المريض",
    ),
    "patients_add_email": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني",
    ),
    "patients_add_emergencyContactName": MessageLookupByLibrary.simpleMessage(
      "اسم جهة اتصال الطوارئ",
    ),
    "patients_add_emergencyContactPhone": MessageLookupByLibrary.simpleMessage(
      "هاتف جهة اتصال الطوارئ",
    ),
    "patients_add_emergencyContactRelationship":
        MessageLookupByLibrary.simpleMessage("صلة القرابة"),
    "patients_add_female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "patients_add_firstName": MessageLookupByLibrary.simpleMessage(
      "الاسم الأول",
    ),
    "patients_add_gender": MessageLookupByLibrary.simpleMessage("الجنس"),
    "patients_add_lastName": MessageLookupByLibrary.simpleMessage(
      "اسم العائلة",
    ),
    "patients_add_male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "patients_add_mobile": MessageLookupByLibrary.simpleMessage("الجوال"),
    "patients_add_mrn": MessageLookupByLibrary.simpleMessage("الرقم الطبي"),
    "patients_add_nationalId": MessageLookupByLibrary.simpleMessage(
      "الهوية الوطنية",
    ),
    "patients_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "patients_add_vipStatus": MessageLookupByLibrary.simpleMessage(
      "حالة كبار الشخصيات",
    ),
    "patients_view_active": MessageLookupByLibrary.simpleMessage("نشط"),
    "patients_view_addPatient": MessageLookupByLibrary.simpleMessage(
      "إضافة مريض",
    ),
    "patients_view_address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "patients_view_age": MessageLookupByLibrary.simpleMessage("العمر"),
    "patients_view_allGenders": MessageLookupByLibrary.simpleMessage(
      "جميع الأجناس",
    ),
    "patients_view_bloodType": MessageLookupByLibrary.simpleMessage(
      "فصيلة الدم",
    ),
    "patients_view_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
    "patients_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "patients_view_columnBlood": MessageLookupByLibrary.simpleMessage(
      "فصيلة الدم",
    ),
    "patients_view_columnDobAge": MessageLookupByLibrary.simpleMessage(
      "تاريخ الميلاد / العمر",
    ),
    "patients_view_columnGender": MessageLookupByLibrary.simpleMessage("الجنس"),
    "patients_view_columnMrn": MessageLookupByLibrary.simpleMessage(
      "الرقم الطبي",
    ),
    "patients_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "patients_view_columnPhone": MessageLookupByLibrary.simpleMessage("الهاتف"),
    "patients_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "patients_view_description": MessageLookupByLibrary.simpleMessage(
      "بيانات المرضى المسجلين - الرقم الطبي، الديموغرافيا، التأمين، التواصل.",
    ),
    "patients_view_dob": MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
    "patients_view_editAction": MessageLookupByLibrary.simpleMessage("تعديل"),
    "patients_view_email": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني",
    ),
    "patients_view_emergencyContact": MessageLookupByLibrary.simpleMessage(
      "جهة اتصال الطوارئ",
    ),
    "patients_view_emergencyPhone": MessageLookupByLibrary.simpleMessage(
      "هاتف الطوارئ",
    ),
    "patients_view_female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "patients_view_genderHint": MessageLookupByLibrary.simpleMessage("الجنس"),
    "patients_view_inactive": MessageLookupByLibrary.simpleMessage("غير نشط"),
    "patients_view_male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "patients_view_mobile": MessageLookupByLibrary.simpleMessage("الجوال"),
    "patients_view_name": MessageLookupByLibrary.simpleMessage("الاسم"),
    "patients_view_nationalId": MessageLookupByLibrary.simpleMessage(
      "الهوية الوطنية",
    ),
    "patients_view_no": MessageLookupByLibrary.simpleMessage("لا"),
    "patients_view_patientDetails": MessageLookupByLibrary.simpleMessage(
      "تفاصيل المريض",
    ),
    "patients_view_relationship": MessageLookupByLibrary.simpleMessage(
      "صلة القرابة",
    ),
    "patients_view_title": MessageLookupByLibrary.simpleMessage("المرضى"),
    "patients_view_viewAction": MessageLookupByLibrary.simpleMessage("عرض"),
    "patients_view_vip": MessageLookupByLibrary.simpleMessage("كبار الشخصيات"),
    "patients_view_yes": MessageLookupByLibrary.simpleMessage("نعم"),
    "pharmacy_add_addItem": MessageLookupByLibrary.simpleMessage("إضافة دواء"),
    "pharmacy_add_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "pharmacy_add_diagnosis": MessageLookupByLibrary.simpleMessage("التشخيص"),
    "pharmacy_add_dosage": MessageLookupByLibrary.simpleMessage("الجرعة"),
    "pharmacy_add_durationDays": MessageLookupByLibrary.simpleMessage(
      "المدة (أيام)",
    ),
    "pharmacy_add_frequency": MessageLookupByLibrary.simpleMessage("التكرار"),
    "pharmacy_add_instructions": MessageLookupByLibrary.simpleMessage(
      "التعليمات",
    ),
    "pharmacy_add_medicationItems": MessageLookupByLibrary.simpleMessage(
      "عناصر الأدوية",
    ),
    "pharmacy_add_medicationName": MessageLookupByLibrary.simpleMessage(
      "اسم الدواء",
    ),
    "pharmacy_add_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
    "pharmacy_add_patient": MessageLookupByLibrary.simpleMessage("المريض"),
    "pharmacy_add_save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "pharmacy_add_title": MessageLookupByLibrary.simpleMessage(
      "وصفة طبية جديدة",
    ),
    "pharmacy_view_allStatuses": MessageLookupByLibrary.simpleMessage(
      "جميع الحالات",
    ),
    "pharmacy_view_cancelAction": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "pharmacy_view_cancelMsg": m17,
    "pharmacy_view_cancelTitle": MessageLookupByLibrary.simpleMessage(
      "إلغاء الوصفة الطبية",
    ),
    "pharmacy_view_cancelled": MessageLookupByLibrary.simpleMessage("ملغاة"),
    "pharmacy_view_columnActions": MessageLookupByLibrary.simpleMessage(
      "إجراءات",
    ),
    "pharmacy_view_columnDate": MessageLookupByLibrary.simpleMessage("التاريخ"),
    "pharmacy_view_columnDiagnosis": MessageLookupByLibrary.simpleMessage(
      "التشخيص",
    ),
    "pharmacy_view_columnItems": MessageLookupByLibrary.simpleMessage(
      "العناصر",
    ),
    "pharmacy_view_columnPatient": MessageLookupByLibrary.simpleMessage(
      "المريض",
    ),
    "pharmacy_view_columnRx": MessageLookupByLibrary.simpleMessage(
      "رقم الوصفة",
    ),
    "pharmacy_view_columnStatus": MessageLookupByLibrary.simpleMessage(
      "الحالة",
    ),
    "pharmacy_view_description": MessageLookupByLibrary.simpleMessage(
      "الوصفات الطبية، الصرف، وتتبع الأدوية.",
    ),
    "pharmacy_view_dispenseAction": MessageLookupByLibrary.simpleMessage("صرف"),
    "pharmacy_view_dispenseMsg": m18,
    "pharmacy_view_dispenseTitle": MessageLookupByLibrary.simpleMessage(
      "صرف الوصفة الطبية",
    ),
    "pharmacy_view_dispensed": MessageLookupByLibrary.simpleMessage("تم الصرف"),
    "pharmacy_view_filterByStatus": MessageLookupByLibrary.simpleMessage(
      "تصفية حسب الحالة",
    ),
    "pharmacy_view_lineItems": MessageLookupByLibrary.simpleMessage("الأصناف"),
    "pharmacy_view_newPrescription": MessageLookupByLibrary.simpleMessage(
      "وصفة طبية جديدة",
    ),
    "pharmacy_view_no": MessageLookupByLibrary.simpleMessage("لا"),
    "pharmacy_view_noItems": MessageLookupByLibrary.simpleMessage(
      "لا توجد عناصر",
    ),
    "pharmacy_view_pending": MessageLookupByLibrary.simpleMessage(
      "قيد الانتظار",
    ),
    "pharmacy_view_title": MessageLookupByLibrary.simpleMessage("الصيدلية"),
    "pharmacy_view_totalRx": MessageLookupByLibrary.simpleMessage(
      "إجمالي الوصفات",
    ),
    "pharmacy_view_yesCancel": MessageLookupByLibrary.simpleMessage(
      "نعم، إلغاء",
    ),
    "utils_status_cancelled": MessageLookupByLibrary.simpleMessage("ملغى"),
    "utils_status_closed": MessageLookupByLibrary.simpleMessage("مغلق"),
    "utils_status_completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
    "utils_status_inTreatment": MessageLookupByLibrary.simpleMessage(
      "في العلاج",
    ),
    "utils_status_notTriaged": MessageLookupByLibrary.simpleMessage(
      "غير مفروز",
    ),
    "utils_status_unknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
    "utils_status_waiting": MessageLookupByLibrary.simpleMessage(
      "قيد الانتظار",
    ),
    "utils_triage_esiLevel": m19,
  };
}

abstract class SurgeryBookingsService {
  Future<dynamic> cancelSurgeryBooking(String id, Map<String, dynamic> data);
  Future<dynamic> startSurgeryBooking(String id, Map<String, dynamic> data);
  Future<dynamic> completeSurgeryBooking(String id, Map<String, dynamic> data);
  Future<dynamic> teamSurgeryBooking(String id);
  Future<dynamic> safetyChecklistSurgeryBooking(String id, Map<String, dynamic> data);
  Future<dynamic> postSafetychecklistsurgerybooking(String id, Map<String, dynamic> data);
  Future<dynamic> postSafetychecklistsurgerybooking2(String id, Map<String, dynamic> data);
  Future<dynamic> getSafetychecklistsurgerybooking(String id);
  Future<dynamic> surgeryRecordSurgeryBooking(String id);
  Future<dynamic> getSurgeryBookingById(String id);
  Future<dynamic> updateSurgeryBooking(String id, Map<String, dynamic> data);
  Future<dynamic> book(Map<String, dynamic> data);
  Future<dynamic> deleteTeamByteammemberid(String teammemberid);
  Future<dynamic> team(Map<String, dynamic> data);
  Future<dynamic> getSurgeryBookings([Map<String, dynamic>? queryParams]);
}

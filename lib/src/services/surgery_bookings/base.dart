import '../../models/_exports.dart';

abstract class SurgeryBookingsService {
  Future<SurgeryBooking> cancelSurgeryBooking(String id, SurgeryBooking data, {
    String? reason,
  });
  Future<SurgeryBooking> startSurgeryBooking(String id, SurgeryBooking data);
  Future<SurgeryBooking> completeSurgeryBooking(String id, SurgeryBooking data);
  Future<SurgeryBooking> teamSurgeryBooking(String id);
  Future<SurgeryBooking> safetyChecklistSurgeryBooking(
    String id,
    SurgeryBooking data,
  );
  Future<SurgeryBooking> postSafetychecklistsurgerybooking(
    String id,
    SurgeryBooking data,
  );
  Future<SurgeryBooking> postSafetychecklistsurgerybooking2(
    String id,
    SurgeryBooking data,
  );
  Future<SurgeryBooking> getSafetychecklistsurgerybooking(String id);
  Future<SurgeryBooking> surgeryRecordSurgeryBooking(String id);
  Future<SurgeryBooking> getSurgeryBookingById(String id);
  Future<SurgeryBooking> updateSurgeryBooking(String id, SurgeryBooking data);
  Future<SurgeryBooking> book(SurgeryBooking data);
  Future<SurgeryBooking> deleteTeamByteammemberid(String teammemberid);
  Future<SurgeryBooking> team(SurgeryBooking data);
  Future<List<SurgeryBooking>> getSurgeryBookings({
    String? searchTerm,
    String? patientId,
    String? primarySurgeonId,
    String? operatingRoomId,
    String? priority,
    String? status,
    DateTime? scheduledFrom,
    DateTime? scheduledTo,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    bool? sortDescending,
  });
}

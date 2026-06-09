import '../../models/_exports.dart';
import 'base.dart';

class FakeSurgeryBookingsService implements SurgeryBookingsService {
  final List<SurgeryBooking> _data = [];

  @override
  Future<SurgeryBooking> cancelSurgeryBooking(
    String id,
    SurgeryBooking data, {
    String? reason,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> startSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> completeSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> teamSurgeryBooking(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgeryBooking();
  }

  @override
  Future<SurgeryBooking> safetyChecklistSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> postSafetychecklistsurgerybooking(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> postSafetychecklistsurgerybooking2(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> getSafetychecklistsurgerybooking(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgeryBooking();
  }

  @override
  Future<SurgeryBooking> surgeryRecordSurgeryBooking(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgeryBooking();
  }

  @override
  Future<SurgeryBooking> getSurgeryBookingById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgeryBooking();
  }

  @override
  Future<SurgeryBooking> updateSurgeryBooking(
    String id,
    SurgeryBooking data,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> book(SurgeryBooking data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
  Future<SurgeryBooking> deleteTeamByteammemberid(String teammemberid) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return SurgeryBooking();
  }

  @override
  Future<SurgeryBooking> team(SurgeryBooking data) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _data.add(data);
    return data;
  }

  @override
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
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _data;
  }
}

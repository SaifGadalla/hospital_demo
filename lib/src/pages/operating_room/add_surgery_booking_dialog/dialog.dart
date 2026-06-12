import '../../../../common.dart';
import 'controller.dart';

class AddSurgeryBookingDialog extends ConsumerStatefulWidget {
  const AddSurgeryBookingDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddSurgeryBookingDialog(),
    );
  }

  @override
  ConsumerState<AddSurgeryBookingDialog> createState() =>
      _AddSurgeryBookingDialogState();
}

class _AddSurgeryBookingDialogState
    extends ConsumerState<AddSurgeryBookingDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addSurgeryBookingDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addSurgeryBookingDialogControllerProvider);
    final controller = ref.read(
      addSurgeryBookingDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: Text(context.l10n.operating_room_add_title),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: SizedBox(
          width: 700,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SizedBox(
                width: 300,
                child: ReactiveDropdownField<Patient>(
                  formControlName: 'patient',
                  items: controller.patients.map((patient) {
                    return DropdownMenuItem(
                      value: patient,
                      child: Text('${patient.fullName} (${patient.mrn})'),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: context.l10n.operating_room_add_patient,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: ReactiveDropdownField<SurgicalProcedure>(
                  formControlName: 'procedure',
                  items: controller.procedures.map((proc) {
                    return DropdownMenuItem(
                      value: proc,
                      child: Text(proc.procedureName ?? ''),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: context.l10n.operating_room_add_procedure,
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: ReactiveDropdownField<OperatingRoom>(
                  formControlName: 'operatingRoom',
                  items: controller.operatingRooms.map((room) {
                    return DropdownMenuItem(
                      value: room,
                      child: Text(
                        '${room.roomNumber} (${room.roomType ?? ""})',
                      ),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: context.l10n.operating_room_add_operatingRoom,
                  ),
                ),
              ),
              AppDatePicker(formControlName: 'scheduledDate'),
              AppTimePicker(formControlName: 'scheduledTime'),
              DialogTextField(
                formControlName: 'estimatedDuration',
                label: context.l10n.operating_room_add_duration,
                width: 150,
              ),
              DialogDropdownField<String>(
                formControlName: 'priority',
                label: context.l10n.operating_room_add_priority,
                items: [
                  DropdownMenuItem(
                    value: 'Routine',
                    child: Text(context.l10n.operating_room_add_routine),
                  ),
                  DropdownMenuItem(
                    value: 'Urgent',
                    child: Text(context.l10n.operating_room_add_urgent),
                  ),
                  DropdownMenuItem(
                    value: 'Emergency',
                    child: Text(context.l10n.operating_room_add_emergency),
                  ),
                ],
              ),
              DialogDropdownField<String>(
                formControlName: 'anesthesiaType',
                label: context.l10n.operating_room_add_anesthesiaType,
                items: [
                  DropdownMenuItem(
                    value: 'General',
                    child: Text(context.l10n.operating_room_add_general),
                  ),
                  DropdownMenuItem(
                    value: 'Local',
                    child: Text(context.l10n.operating_room_add_local),
                  ),
                  DropdownMenuItem(
                    value: 'Regional',
                    child: Text(context.l10n.operating_room_add_regional),
                  ),
                  DropdownMenuItem(
                    value: 'Spinal',
                    child: Text(context.l10n.operating_room_add_spinal),
                  ),
                  DropdownMenuItem(
                    value: 'Sedation',
                    child: Text(context.l10n.operating_room_add_sedation),
                  ),
                ],
              ),
              DialogTextField(
                formControlName: 'notes',
                label: context.l10n.operating_room_add_notes,
                width: 300,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.operating_room_add_cancel),
        ),
        TextButton(
          onPressed: () async {
            if (controller.formGroup.valid) {
              await controller.saveBooking();
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: Text(context.l10n.operating_room_add_save),
        ),
      ],
    );
  }
}

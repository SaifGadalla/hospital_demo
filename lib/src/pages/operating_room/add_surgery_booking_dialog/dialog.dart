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
      ref
          .read(addSurgeryBookingDialogControllerProvider.notifier)
          .loadData();
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
      title: const Text('Book Surgery'),
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
                  decoration: const InputDecoration(
                    labelText: 'Patient',
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
                  decoration: const InputDecoration(
                    labelText: 'Procedure',
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
                      child: Text('${room.roomNumber} (${room.roomType ?? ""})'),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Operating Room',
                  ),
                ),
              ),
              AppDatePicker(formControlName: 'scheduledDate'),
              AppTimePicker(formControlName: 'scheduledTime'),
              DialogTextField(
                formControlName: 'estimatedDuration',
                label: 'Duration (min)',
                width: 150,
              ),
              DialogDropdownField<String>(
                formControlName: 'priority',
                label: 'Priority',
                items: const [
                  DropdownMenuItem(value: 'Routine', child: Text('Routine')),
                  DropdownMenuItem(value: 'Urgent', child: Text('Urgent')),
                  DropdownMenuItem(
                    value: 'Emergency',
                    child: Text('Emergency'),
                  ),
                ],
              ),
              DialogDropdownField<String>(
                formControlName: 'anesthesiaType',
                label: 'Anesthesia Type',
                items: const [
                  DropdownMenuItem(value: 'General', child: Text('General')),
                  DropdownMenuItem(value: 'Local', child: Text('Local')),
                  DropdownMenuItem(value: 'Regional', child: Text('Regional')),
                  DropdownMenuItem(value: 'Spinal', child: Text('Spinal')),
                  DropdownMenuItem(value: 'Sedation', child: Text('Sedation')),
                ],
              ),
              DialogTextField(
                formControlName: 'notes',
                label: 'Notes',
                width: 300,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
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
          child: const Text('Save'),
        ),
      ],
    );
  }
}

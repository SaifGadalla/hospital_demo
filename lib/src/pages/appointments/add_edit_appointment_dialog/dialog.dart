import '../../../../common.dart';
import 'controller.dart';

class AddEditAppointmentDialog extends ConsumerStatefulWidget {
  const AddEditAppointmentDialog({super.key});

  static Future<bool?> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => const AddEditAppointmentDialog(),
    );
  }

  @override
  ConsumerState<AddEditAppointmentDialog> createState() =>
      _AddEditAppointmentDialogState();
}

class _AddEditAppointmentDialogState
    extends ConsumerState<AddEditAppointmentDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addEditAppointmentDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addEditAppointmentDialogControllerProvider);
    final controller = ref.read(
      addEditAppointmentDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: const Text('Add Appointment'),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: Column(
          children: [
            ReactiveDropdownField(
              formControlName: 'patient',
              items: controller.patients.map((patient) {
                return DropdownMenuItem(
                  value: patient,
                  child: Text('${patient.fullName} (${patient.mrn})'),
                );
              }).toList(),
              decoration: const InputDecoration(labelText: 'Patient'),
              onChanged: (value) {},
            ),
            AppDatePicker(formControlName: 'date'),
            AppTimePicker(formControlName: 'time'),
            DialogDropdownField<String>(
              formControlName: 'type',
              label: 'Appointment Type',
              items: const [
                DropdownMenuItem(
                  value: 'Consultation',
                  child: Text('Consultation'),
                ),
                DropdownMenuItem(
                  value: 'Follow-up',
                  child: Text('Follow-up'),
                ),
                DropdownMenuItem(
                  value: 'Procedure',
                  child: Text('Procedure'),
                ),
              ],
            ),
            DialogTextField(
              formControlName: 'note',
              label: 'Notes',
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: state.isSaving
              ? null
              : () async {
                  if (controller.formGroup.valid) {
                    final success = await controller.saveAppointment();
                    if (success && context.mounted) {
                      Navigator.pop(context, true);
                    }
                  }
                },
          child: state.isSaving
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Save'),
        ),
      ],
    );
  }
}

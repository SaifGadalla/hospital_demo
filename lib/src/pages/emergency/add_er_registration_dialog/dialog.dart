import '../../../../common.dart';
import 'controller.dart';

class AddErRegistrationDialog extends ConsumerStatefulWidget {
  const AddErRegistrationDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddErRegistrationDialog(),
    );
  }

  @override
  ConsumerState<AddErRegistrationDialog> createState() =>
      _AddErRegistrationDialogState();
}

class _AddErRegistrationDialogState
    extends ConsumerState<AddErRegistrationDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(addErRegistrationDialogControllerProvider.notifier)
          .loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addErRegistrationDialogControllerProvider);
    final controller = ref.read(
      addErRegistrationDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: const Text('Register ER Arrival'),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: SizedBox(
          width: 500,
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
              DialogDropdownField<String>(
                formControlName: 'arrivalMode',
                label: 'Arrival Mode',
                items: const [
                  DropdownMenuItem(value: 'Walk-in', child: Text('Walk-in')),
                  DropdownMenuItem(
                    value: 'Ambulance',
                    child: Text('Ambulance'),
                  ),
                  DropdownMenuItem(
                    value: 'Helicopter',
                    child: Text('Helicopter'),
                  ),
                  DropdownMenuItem(value: 'Police', child: Text('Police')),
                ],
              ),
              DialogTextField(
                formControlName: 'chiefComplaint',
                label: 'Chief Complaint',
                width: 300,
              ),
              DialogDropdownField<int>(
                formControlName: 'triageLevel',
                label: 'Triage Level',
                items: const [
                  DropdownMenuItem(value: 1, child: Text('1 - Resuscitation')),
                  DropdownMenuItem(value: 2, child: Text('2 - Emergent')),
                  DropdownMenuItem(value: 3, child: Text('3 - Urgent')),
                  DropdownMenuItem(value: 4, child: Text('4 - Less Urgent')),
                  DropdownMenuItem(value: 5, child: Text('5 - Non-Urgent')),
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
              await controller.saveRegistration();
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

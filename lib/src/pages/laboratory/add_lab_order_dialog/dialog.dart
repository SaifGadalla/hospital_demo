import '../../../../common.dart';
import 'controller.dart';

class AddLabOrderDialog extends ConsumerStatefulWidget {
  const AddLabOrderDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddLabOrderDialog(),
    );
  }

  @override
  ConsumerState<AddLabOrderDialog> createState() =>
      _AddLabOrderDialogState();
}

class _AddLabOrderDialogState extends ConsumerState<AddLabOrderDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addLabOrderDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addLabOrderDialogControllerProvider);
    final controller = ref.read(
      addLabOrderDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: const Text('New Lab Order'),
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
                formControlName: 'priority',
                label: 'Priority',
                items: const [
                  DropdownMenuItem(value: 'Routine', child: Text('Routine')),
                  DropdownMenuItem(value: 'Urgent', child: Text('Urgent')),
                  DropdownMenuItem(value: 'STAT', child: Text('STAT')),
                ],
              ),
              DialogTextField(
                formControlName: 'clinicalIndication',
                label: 'Clinical Indication',
                width: 300,
              ),
              DialogTextField(
                formControlName: 'specimenType',
                label: 'Specimen Type',
                width: 200,
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
              await controller.saveLabOrder();
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

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
  ConsumerState<AddLabOrderDialog> createState() => _AddLabOrderDialogState();
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
    final controller = ref.read(addLabOrderDialogControllerProvider.notifier);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: Text(context.l10n.laboratory_add_title),
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
                  decoration: InputDecoration(
                    labelText: context.l10n.laboratory_add_patient,
                  ),
                ),
              ),
              DialogDropdownField<String>(
                formControlName: 'priority',
                label: context.l10n.laboratory_add_priority,
                items: [
                  DropdownMenuItem(
                    value: 'Routine',
                    child: Text(context.l10n.laboratory_add_routine),
                  ),
                  DropdownMenuItem(
                    value: 'Urgent',
                    child: Text(context.l10n.laboratory_add_urgent),
                  ),
                  DropdownMenuItem(
                    value: 'STAT',
                    child: Text(context.l10n.laboratory_add_stat),
                  ),
                ],
              ),
              DialogTextField(
                formControlName: 'clinicalIndication',
                label: context.l10n.laboratory_add_clinicalIndication,
                width: 300,
              ),
              DialogTextField(
                formControlName: 'specimenType',
                label: context.l10n.laboratory_add_specimenType,
                width: 200,
              ),
              DialogTextField(
                formControlName: 'notes',
                label: context.l10n.laboratory_add_notes,
                width: 300,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.laboratory_add_cancel),
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
          child: Text(context.l10n.laboratory_add_save),
        ),
      ],
    );
  }
}

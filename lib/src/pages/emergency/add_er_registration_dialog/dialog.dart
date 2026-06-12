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
      ref.read(addErRegistrationDialogControllerProvider.notifier).loadData();
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
      title: Text(context.l10n.emergency_add_title),
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
                    labelText: context.l10n.emergency_add_patient,
                  ),
                ),
              ),
              DialogDropdownField<String>(
                formControlName: 'arrivalMode',
                label: context.l10n.emergency_add_arrivalMode,
                items: [
                  DropdownMenuItem(
                    value: 'Walk-in',
                    child: Text(context.l10n.emergency_add_walkIn),
                  ),
                  DropdownMenuItem(
                    value: 'Ambulance',
                    child: Text(context.l10n.emergency_add_ambulance),
                  ),
                  DropdownMenuItem(
                    value: 'Helicopter',
                    child: Text(context.l10n.emergency_add_helicopter),
                  ),
                  DropdownMenuItem(
                    value: 'Police',
                    child: Text(context.l10n.emergency_add_police),
                  ),
                ],
              ),
              DialogTextField(
                formControlName: 'chiefComplaint',
                label: context.l10n.emergency_add_chiefComplaint,
                width: 300,
              ),
              DialogDropdownField<int>(
                formControlName: 'triageLevel',
                label: context.l10n.emergency_add_triageLevel,
                items: [
                  DropdownMenuItem(
                    value: 1,
                    child: Text(context.l10n.emergency_add_level1),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(context.l10n.emergency_add_level2),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(context.l10n.emergency_add_level3),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text(context.l10n.emergency_add_level4),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text(context.l10n.emergency_add_level5),
                  ),
                ],
              ),
              DialogTextField(
                formControlName: 'notes',
                label: context.l10n.emergency_add_notes,
                width: 300,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.emergency_add_cancel),
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
          child: Text(context.l10n.emergency_add_save),
        ),
      ],
    );
  }
}

import '../../../../common.dart';
import 'controller.dart';

class AddPrescriptionDialog extends ConsumerStatefulWidget {
  const AddPrescriptionDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddPrescriptionDialog(),
    );
  }

  @override
  ConsumerState<AddPrescriptionDialog> createState() =>
      _AddPrescriptionDialogState();
}

class _AddPrescriptionDialogState extends ConsumerState<AddPrescriptionDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addPrescriptionDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addPrescriptionDialogControllerProvider);
    final controller = ref.read(
      addPrescriptionDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: Text(context.l10n.pharmacy_add_title),
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
                    labelText: context.l10n.pharmacy_add_patient,
                  ),
                ),
              ),
              AppDatePicker(formControlName: 'prescriptionDate'),
              DialogTextField(
                formControlName: 'diagnosis',
                label: context.l10n.pharmacy_add_diagnosis,
                width: 300,
              ),
              DialogTextField(
                formControlName: 'notes',
                label: context.l10n.pharmacy_add_notes,
                width: 300,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(context.l10n.pharmacy_add_cancel),
        ),
        TextButton(
          onPressed: () async {
            if (controller.formGroup.valid) {
              await controller.savePrescription();
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: Text(context.l10n.pharmacy_add_save),
        ),
      ],
    );
  }
}

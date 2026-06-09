import '../../../../common.dart';
import 'controller.dart';

class AddMedicalRecordDialog extends ConsumerStatefulWidget {
  const AddMedicalRecordDialog({super.key});

  static Future<bool?> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => const AddMedicalRecordDialog(),
    );
  }

  @override
  ConsumerState<AddMedicalRecordDialog> createState() =>
      _AddMedicalRecordDialogState();
}

class _AddMedicalRecordDialogState
    extends ConsumerState<AddMedicalRecordDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addMedicalRecordDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addMedicalRecordDialogControllerProvider);
    final controller = ref.read(
      addMedicalRecordDialogControllerProvider.notifier,
    );

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return AlertDialog(
      scrollable: true,
      title: const Text('Add Medical Record'),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: SizedBox(
          width: 500,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SizedBox(
                width: double.infinity,
                child: ReactiveDropdownField<Patient>(
                  formControlName: 'patient',
                  items: controller.patients.map((patient) {
                    return DropdownMenuItem(
                      value: patient,
                      child: Text('${patient.fullName} (${patient.mrn})'),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Patient'),
                ),
              ),
              AppDatePicker(formControlName: 'visitDate'),
              DialogTextField(
                formControlName: 'diagnosisCode',
                label: 'Diagnosis Code',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'diagnosisDescription',
                label: 'Diagnosis Description',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'subjective',
                label: 'Subjective',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'objective',
                label: 'Objective',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'assessment',
                label: 'Assessment',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'plan',
                label: 'Plan',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'allergies',
                label: 'Allergies',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'currentMedications',
                label: 'Current Medications',
                width: double.infinity,
              ),
              DialogTextField(
                formControlName: 'clinicalNotes',
                label: 'Clinical Notes',
                width: double.infinity,
              ),
            ],
          ),
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
                    final success = await controller.saveMedicalRecord();
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

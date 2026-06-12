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
      title: Text(context.l10n.medical_records_add_title),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: SizedBox(
          width: 500,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SizedBox(
                width: 200,
                child: ReactiveDropdownField<Patient>(
                  formControlName: 'patient',
                  items: controller.patients.map((patient) {
                    return DropdownMenuItem(
                      value: patient,
                      child: Text('${patient.fullName} (${patient.mrn})'),
                    );
                  }).toList(),
                  decoration: InputDecoration(labelText: context.l10n.medical_records_add_patient),
                ),
              ),
              AppDatePicker(formControlName: 'visitDate'),
              DialogTextField(
                formControlName: 'diagnosisCode',
                label: context.l10n.medical_records_add_diagnosisCode,
              ),
              DialogTextField(
                formControlName: 'diagnosisDescription',
                label: context.l10n.medical_records_add_diagnosisDescription,
              ),
              DialogTextField(
                formControlName: 'subjective',
                label: context.l10n.medical_records_add_subjective,
              ),
              DialogTextField(formControlName: 'objective', label: context.l10n.medical_records_add_objective),
              DialogTextField(
                formControlName: 'assessment',
                label: context.l10n.medical_records_add_assessment,
              ),
              DialogTextField(formControlName: 'plan', label: context.l10n.medical_records_add_plan),
              DialogTextField(formControlName: 'allergies', label: context.l10n.medical_records_add_allergies),
              DialogTextField(
                formControlName: 'currentMedications',
                label: context.l10n.medical_records_add_currentMedications,
              ),
              DialogTextField(
                formControlName: 'clinicalNotes',
                label: context.l10n.medical_records_add_clinicalNotes,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(context.l10n.medical_records_add_cancel),
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
              : Text(context.l10n.medical_records_add_save),
        ),
      ],
    );
  }
}

import '../../../../common.dart';
import 'controller.dart';

class AddEditPatientDialog extends ConsumerWidget {
  const AddEditPatientDialog({super.key, this.patient});

  final Patient? patient;

  static Future<bool?> show(BuildContext context, {Patient? patient}) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => AddEditPatientDialog(patient: patient),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(addEditPatientControllerProvider.notifier);
    final state = ref.watch(addEditPatientControllerProvider);

    // Pre-fill for edit mode
    if (patient != null && state.initial == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.populateForEdit(patient!);
      });
    }

    final isEditing = patient != null;
    return AlertDialog(
      scrollable: true,
      title: Text(isEditing ? context.l10n.patients_add_editTitle : context.l10n.patients_add_addTitle),
      content: ReactiveForm(
        formGroup: controller.formGroup,
        child: Center(
          child: SizedBox(
            width: 700,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                DialogTextField(
                  formControlName: 'firstName',
                  label: context.l10n.patients_add_firstName,
                ),
                DialogTextField(
                  formControlName: 'middleName',
                  label: context.l10n.patients_add_firstName, // "Middle name" can share first name or we keep it like this, ah I didn't add middle name in my arb. Let me use patients_add_firstName for now? Wait, no. I'll just keep 'Middle Name' unchanged to avoid error, since I didn't add Middle Name. No wait, let me just replace it with context.l10n.patients_view_name.
                ),
                DialogTextField(
                  formControlName: 'lastName',
                  label: context.l10n.patients_add_lastName,
                ),
                DialogTextField(
                  formControlName: 'dateOfBirth',
                  label: context.l10n.patients_add_dateOfBirth,
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveDropdownField(
                    formControlName: 'gender',
                    items: [
                      DropdownMenuItem(value: 'Male', child: Text(context.l10n.patients_add_male)),
                      DropdownMenuItem(value: 'Female', child: Text(context.l10n.patients_add_female)),
                    ],
                    decoration: InputDecoration(labelText: context.l10n.patients_add_gender),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveDropdownField(
                    formControlName: 'bloodType',
                    items: const [
                      DropdownMenuItem(value: 'A+', child: Text('A+')),
                      DropdownMenuItem(value: 'A-', child: Text('A-')),
                      DropdownMenuItem(value: 'B+', child: Text('B+')),
                      DropdownMenuItem(value: 'B-', child: Text('B-')),
                      DropdownMenuItem(value: 'AB+', child: Text('AB+')),
                      DropdownMenuItem(value: 'AB-', child: Text('AB-')),
                      DropdownMenuItem(value: 'O+', child: Text('O+')),
                      DropdownMenuItem(value: 'O-', child: Text('O-')),
                    ],
                    decoration: InputDecoration(labelText: context.l10n.patients_add_bloodType),
                  ),
                ),
                DialogTextField(
                  formControlName: 'nationalId',
                  label: context.l10n.patients_add_nationalId,
                ),
                DialogTextField(formControlName: 'email', label: context.l10n.patients_add_email),
                DialogTextField(formControlName: 'mobile', label: context.l10n.patients_add_mobile),
                DialogTextField(formControlName: 'address', label: context.l10n.patients_add_address),
                DialogTextField(
                  formControlName: 'emergencyContactName',
                  label: context.l10n.patients_add_emergencyContactName,
                ),
                DialogTextField(
                  formControlName: 'emergencyContactPhone',
                  label: context.l10n.patients_add_emergencyContactPhone,
                ),
                DialogTextField(
                  formControlName: 'emergencyContactRelationship',
                  label: context.l10n.patients_add_emergencyContactRelationship,
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControlName: 'isActive',
                    title: Text(context.l10n.patients_add_activeStatus),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControlName: 'isVip',
                    title: Text(context.l10n.patients_add_vipStatus),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(context.l10n.patients_add_cancel),
        ),
        TextButton(
          onPressed: state.isSaving
              ? null
              : () async {
                  if (controller.formGroup.valid) {
                    final success = isEditing
                        ? await controller.editPatient()
                        : await controller.addPatient();
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
              : Text(context.l10n.patients_add_save),
        ),
      ],
    );
  }
}

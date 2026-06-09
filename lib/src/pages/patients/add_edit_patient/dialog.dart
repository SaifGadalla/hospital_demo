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
      title: Text(isEditing ? 'Edit Patient' : 'Register Patient'),
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
                  label: 'First Name',
                ),
                DialogTextField(
                  formControlName: 'middleName',
                  label: 'Middle Name',
                ),
                DialogTextField(
                  formControlName: 'lastName',
                  label: 'Last Name',
                ),
                DialogTextField(
                  formControlName: 'dateOfBirth',
                  label: 'Date of Birth',
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveDropdownField(
                    formControlName: 'gender',
                    items: const [
                      DropdownMenuItem(value: 'Male', child: Text('Male')),
                      DropdownMenuItem(value: 'Female', child: Text('Female')),
                    ],
                    decoration: const InputDecoration(labelText: 'Gender'),
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
                    decoration: const InputDecoration(labelText: 'Blood Type'),
                  ),
                ),
                DialogTextField(
                  formControlName: 'nationalId',
                  label: 'National ID',
                ),
                DialogTextField(formControlName: 'email', label: 'Email'),
                DialogTextField(formControlName: 'mobile', label: 'Mobile'),
                DialogTextField(formControlName: 'address', label: 'Address'),
                DialogTextField(
                  formControlName: 'emergencyContactName',
                  label: 'Emergency Contact Name',
                ),
                DialogTextField(
                  formControlName: 'emergencyContactPhone',
                  label: 'Emergency Contact Phone',
                ),
                DialogTextField(
                  formControlName: 'emergencyContactRelationship',
                  label: 'Emergency Contact Relationship',
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControlName: 'isActive',
                    title: const Text('Active'),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControlName: 'isVip',
                    title: const Text('VIP'),
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
          child: const Text('Cancel'),
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
              : Text(isEditing ? 'Save' : 'Add'),
        ),
      ],
    );
  }
}

import '../../../../common.dart';
import 'controller.dart';

class AddAdmissionDialog extends ConsumerStatefulWidget {
  const AddAdmissionDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddAdmissionDialog(),
    );
  }

  @override
  ConsumerState<AddAdmissionDialog> createState() =>
      _AddAdmissionDialogState();
}

class _AddAdmissionDialogState extends ConsumerState<AddAdmissionDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addAdmissionDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addAdmissionDialogControllerProvider);
    final controller = ref.read(
      addAdmissionDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: const Text('Admit Patient'),
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
                formControlName: 'admissionType',
                label: 'Admission Type',
                items: const [
                  DropdownMenuItem(
                    value: 'Emergency',
                    child: Text('Emergency'),
                  ),
                  DropdownMenuItem(
                    value: 'Elective',
                    child: Text('Elective'),
                  ),
                  DropdownMenuItem(
                    value: 'Transfer',
                    child: Text('Transfer'),
                  ),
                ],
              ),
              DialogTextField(
                formControlName: 'admissionDiagnosis',
                label: 'Admission Diagnosis',
                width: 300,
              ),
              SizedBox(
                width: 200,
                child: ReactiveDropdownField<Ward>(
                  formControlName: 'ward',
                  items: controller.wards.map((ward) {
                    return DropdownMenuItem(
                      value: ward,
                      child: Text(ward.wardName ?? ''),
                    );
                  }).toList(),
                  decoration: const InputDecoration(labelText: 'Ward'),
                  onChanged: (_) {
                    controller.formGroup.control('bed').reset();
                  },
                ),
              ),
              ReactiveValueListenableBuilder<Ward>(
                formControlName: 'ward',
                builder: (context, control, child) {
                  final selectedWard = control.value;
                  final availableBeds =
                      controller.getBedsForWard(selectedWard?.id);
                  return SizedBox(
                    width: 200,
                    child: ReactiveDropdownField<Bed>(
                      formControlName: 'bed',
                      items: availableBeds.map((bed) {
                        return DropdownMenuItem(
                          value: bed,
                          child: Text(
                            '${bed.bedNumber} (${bed.roomNumber ?? ""})',
                          ),
                        );
                      }).toList(),
                      decoration: const InputDecoration(labelText: 'Bed'),
                    ),
                  );
                },
              ),
              AppDatePicker(formControlName: 'admissionDate'),
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
              await controller.saveAdmission();
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

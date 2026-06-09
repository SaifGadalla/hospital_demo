import '../../../../common.dart';
import 'controller.dart';

class AddClaimDialog extends ConsumerStatefulWidget {
  const AddClaimDialog({super.key});

  static Future<void> show(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => const AddClaimDialog(),
    );
  }

  @override
  ConsumerState<AddClaimDialog> createState() => _AddClaimDialogState();
}

class _AddClaimDialogState extends ConsumerState<AddClaimDialog> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addClaimDialogControllerProvider.notifier).loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addClaimDialogControllerProvider);
    final controller = ref.read(
      addClaimDialogControllerProvider.notifier,
    );
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AlertDialog(
      scrollable: true,
      title: const Text('New Insurance Claim'),
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
              SizedBox(
                width: 300,
                child: ReactiveDropdownField<InsurancePlan>(
                  formControlName: 'insurancePlan',
                  items: controller.insurancePlans.map((plan) {
                    return DropdownMenuItem(
                      value: plan,
                      child: Text(
                        '${plan.planName} (${plan.planCode})',
                      ),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Insurance Plan',
                  ),
                ),
              ),
              AppDatePicker(formControlName: 'serviceDate'),
              DialogTextField(
                formControlName: 'diagnosisCodes',
                label: 'Diagnosis Codes',
                width: 200,
              ),
              DialogTextField(
                formControlName: 'procedureCodes',
                label: 'Procedure Codes',
                width: 200,
              ),
              DialogTextField(
                formControlName: 'totalAmount',
                label: 'Total Amount',
                width: 200,
              ),
              DialogTextField(
                formControlName: 'claimedAmount',
                label: 'Claimed Amount',
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
              await controller.saveClaim();
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

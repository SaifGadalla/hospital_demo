import 'package:hospital_demo/src/pages/patients/add_edit_patient/dialog.dart';

import '../../../common.dart';
import 'package:intl/intl.dart';
import 'controller.dart';

class PatientsPage extends ConsumerStatefulWidget {
  const PatientsPage({super.key});

  @override
  ConsumerState<PatientsPage> createState() => _PatientsPageState();
}

class _PatientsPageState extends ConsumerState<PatientsPage> with SearchMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = ref.read(patientsControllerProvider.notifier);
      controller.loadPatients();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(patientsControllerProvider.notifier);
    final state = ref.watch(patientsControllerProvider);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return AppPage(
      searchFormGroup: searchFormGroup,
      onSearchFieldChanged: (control) async {
        await controller.getPatients(searchTerm: control.value);
      },
      title: 'Patients',
      description:
          'Registered patient master data — MRN, demographics, insurance, contact.',
      mainButtonTitle: 'Add Patient',
      mainButtonOnTap: () async {
        final result = await AddEditPatientDialog.show(context);
        if (result == true) {
          controller.loadPatients();
        }
      },
      hasSearch: true,
      secondarySearchHeaderWidgets: [
        ReactiveForm(
          formGroup: controller.formGroup,
          child: AppDropDownButton(
            items: const [
              DropdownMenuItem(value: null, child: Text('All genders')),
              DropdownMenuItem(value: 'male', child: Text('Male')),
              DropdownMenuItem(value: 'female', child: Text('Female')),
            ],
            formControlName: 'gender',
            onChanged: (_) => controller.getPatients(),
            hint: 'Gender',
          ),
        ),
      ],
      table: DataTable(
        headingRowColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
        dataRowMaxHeight: 60,
        dataRowMinHeight: 40,
        columnSpacing: 0,
        columns: const [
          DataColumn(columnWidth: FixedColumnWidth(150), label: Text('MRN')),
          DataColumn(
            columnWidth: FixedColumnWidth(260),
            label: Text('Patient'),
          ),
          DataColumn(
            columnWidth: FixedColumnWidth(120),
            label: Text('DOB / Age'),
          ),
          DataColumn(label: Text('Gender')),
          DataColumn(label: Text('Phone')),
          DataColumn(label: Text('Blood')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('Actions')),
        ],
        rows: [
          ...state.patients.map((patient) {
            return DataRow(
              cells: [
                DataCell(Text(patient.mrn ?? '')),
                DataCell(
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: ColorManager.success,
                              child: Center(
                                child: Text(
                                  patient.fullName![0].toUpperCase(),
                                  style: TextStyleManager.caption.copyWith(
                                    color: ColorManager.textInverse,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Text(patient.fullName ?? ''),
                            Text(patient.isVIP ?? false ? 'VIP' : ''),
                          ],
                        ),
                        Text(patient.email ?? ''),
                      ],
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '${DateFormat('MMM dd, yyyy').format(patient.dateOfBirth!)} / ${patient.age.toString()}',
                  ),
                ),
                DataCell(Text(patient.gender ?? '')),
                DataCell(Text(patient.mobile ?? '')),
                DataCell(Text(patient.bloodType ?? '')),
                DataCell(
                  Text(patient.isActive ?? false ? 'Active' : 'Inactive'),
                ),
                DataCell(
                  Row(
                    spacing: 8,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _showPatientDetailsDialog(context, patient);
                        },
                        child: Text('View'),
                      ),
                      OutlinedButton(
                        onPressed: () async {
                          final result = await AddEditPatientDialog.show(
                            context,
                            patient: patient,
                          );
                          if (result == true) {
                            controller.loadPatients();
                          }
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: ColorManager.border),
                        ),
                        child: Text('Edit'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  void _showPatientDetailsDialog(BuildContext context, Patient patient) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(patient.fullName ?? 'Patient Details'),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('MRN', patient.mrn),
              _detailRow('Name', patient.fullName),
              _detailRow(
                'Date of Birth',
                patient.dateOfBirth != null
                    ? DateFormat('MMM dd, yyyy').format(patient.dateOfBirth!)
                    : null,
              ),
              _detailRow('Age', patient.age?.toString()),
              _detailRow('Gender', patient.gender),
              _detailRow('Blood Type', patient.bloodType),
              _detailRow('National ID', patient.nationalId),
              _detailRow('Email', patient.email),
              _detailRow('Mobile', patient.mobile),
              _detailRow('Address', patient.address),
              const Divider(),
              _detailRow('Emergency Contact', patient.emergencyContactName),
              _detailRow('Emergency Phone', patient.emergencyContactPhone),
              _detailRow(
                'Relationship',
                patient.emergencyContactRelationship,
              ),
              const Divider(),
              _detailRow(
                'Status',
                patient.isActive ?? false ? 'Active' : 'Inactive',
              ),
              _detailRow('VIP', patient.isVIP ?? false ? 'Yes' : 'No'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _detailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: Text(
              label,
              style: TextStyleManager.label,
            ),
          ),
          Expanded(
            child: Text(
              value ?? 'N/A',
              style: TextStyleManager.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

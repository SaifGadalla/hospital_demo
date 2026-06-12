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
      title: context.l10n.patients_view_title,
      description: context.l10n.patients_view_description,
      mainButtonTitle: context.l10n.patients_view_addPatient,
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
            items: [
              DropdownMenuItem(value: null, child: Text(context.l10n.patients_view_allGenders)),
              DropdownMenuItem(value: 'male', child: Text(context.l10n.patients_view_male)),
              DropdownMenuItem(value: 'female', child: Text(context.l10n.patients_view_female)),
            ],
            formControlName: 'gender',
            onChanged: (_) => controller.getPatients(),
            hint: context.l10n.patients_view_genderHint,
          ),
        ),
      ],
      table: DataTable(
        headingRowColor: WidgetStateProperty.all(
          context.colors.surfaceElevated,
        ),
        dataRowMaxHeight: 60,
        dataRowMinHeight: 40,
        columnSpacing: 0,
        columns: [
          DataColumn(columnWidth: const FixedColumnWidth(150), label: Text(context.l10n.patients_view_columnMrn)),
          DataColumn(
            columnWidth: const FixedColumnWidth(260),
            label: Text(context.l10n.patients_view_columnPatient),
          ),
          DataColumn(
            columnWidth: const FixedColumnWidth(120),
            label: Text(context.l10n.patients_view_columnDobAge),
          ),
          DataColumn(label: Text(context.l10n.patients_view_columnGender)),
          DataColumn(label: Text(context.l10n.patients_view_columnPhone)),
          DataColumn(label: Text(context.l10n.patients_view_columnBlood)),
          DataColumn(label: Text(context.l10n.patients_view_columnStatus)),
          DataColumn(label: Text(context.l10n.patients_view_columnActions)),
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
                              backgroundColor: context.colors.success,
                              child: Center(
                                child: Text(
                                  patient.fullName![0].toUpperCase(),
                                  style: TextStyleManager.caption.copyWith(
                                    color: context.colors.textInverse,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Text(patient.fullName ?? ''),
                            Text(patient.isVIP ?? false ? context.l10n.patients_view_vip : ''),
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
                  Text(patient.isActive ?? false ? context.l10n.patients_view_active : context.l10n.patients_view_inactive),
                ),
                DataCell(
                  Row(
                    spacing: 8,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _showPatientDetailsDialog(context, patient);
                        },
                        child: Text(context.l10n.patients_view_viewAction),
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
                          side: BorderSide(color: context.colors.border),
                        ),
                        child: Text(context.l10n.patients_view_editAction),
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
        title: Text(patient.fullName ?? context.l10n.patients_view_patientDetails),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow(context.l10n.patients_view_columnMrn, patient.mrn),
              _detailRow(context.l10n.patients_view_name, patient.fullName),
              _detailRow(
                context.l10n.patients_view_dob,
                patient.dateOfBirth != null
                    ? DateFormat('MMM dd, yyyy').format(patient.dateOfBirth!)
                    : null,
              ),
              _detailRow(context.l10n.patients_view_age, patient.age?.toString()),
              _detailRow(context.l10n.patients_view_columnGender, patient.gender),
              _detailRow(context.l10n.patients_view_bloodType, patient.bloodType),
              _detailRow(context.l10n.patients_view_nationalId, patient.nationalId),
              _detailRow(context.l10n.patients_view_email, patient.email),
              _detailRow(context.l10n.patients_view_mobile, patient.mobile),
              _detailRow(context.l10n.patients_view_address, patient.address),
              const Divider(),
              _detailRow(context.l10n.patients_view_emergencyContact, patient.emergencyContactName),
              _detailRow(context.l10n.patients_view_emergencyPhone, patient.emergencyContactPhone),
              _detailRow(context.l10n.patients_view_relationship, patient.emergencyContactRelationship),
              const Divider(),
              _detailRow(
                context.l10n.patients_view_columnStatus,
                patient.isActive ?? false ? context.l10n.patients_view_active : context.l10n.patients_view_inactive,
              ),
              _detailRow(context.l10n.patients_view_vip, patient.isVIP ?? false ? context.l10n.patients_view_yes : context.l10n.patients_view_no),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.patients_view_close),
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
            child: Text(label, style: TextStyleManager.label),
          ),
          Expanded(
            child: Text(value ?? 'N/A', style: TextStyleManager.bodyMedium),
          ),
        ],
      ),
    );
  }
}

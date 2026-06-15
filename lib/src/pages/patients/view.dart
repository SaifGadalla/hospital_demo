import 'add_edit_patient/dialog.dart';

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
    if (state.isLoading && state.patients.isEmpty) {
      return AppPage(
        title: context.l10n.patients_view_title,
        description: context.l10n.patients_view_description,
        mainButtonTitle: context.l10n.patients_view_addPatient,
        mainButtonOnTap: () {},
        table: const AppTableSkeleton(),
      );
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
              DropdownMenuItem(
                value: null,
                child: Text(context.l10n.patients_view_allGenders),
              ),
              DropdownMenuItem(
                value: 'male',
                child: Text(context.l10n.patients_view_male),
              ),
              DropdownMenuItem(
                value: 'female',
                child: Text(context.l10n.patients_view_female),
              ),
            ],
            formControlName: 'gender',
            onChanged: (_) => controller.getPatients(),
            hint: context.l10n.patients_view_genderHint,
          ),
        ),
      ],
      table: state.patients.isEmpty
          ? const AppEmptyState()
          : DataTable(
              headingRowColor: WidgetStateProperty.all(
                context.colors.surfaceElevated,
              ),
              dataRowMaxHeight: 60,
              dataRowMinHeight: 40,
              columnSpacing: 0,
              columns: [
                DataColumn(
                  columnWidth: const FixedColumnWidth(150),
                  label: Text(context.l10n.patients_view_columnMrn),
                ),
                DataColumn(
                  columnWidth: const FixedColumnWidth(260),
                  label: Text(context.l10n.patients_view_columnPatient),
                ),
                DataColumn(
                  columnWidth: const FixedColumnWidth(120),
                  label: Text(context.l10n.patients_view_columnDobAge),
                ),
                DataColumn(
                  label: Text(context.l10n.patients_view_columnGender),
                ),
                DataColumn(label: Text(context.l10n.patients_view_columnPhone)),
                DataColumn(label: Text(context.l10n.patients_view_columnBlood)),
                DataColumn(
                  label: Text(context.l10n.patients_view_columnStatus),
                ),
                DataColumn(
                  label: Text(context.l10n.patients_view_columnActions),
                ),
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
                                        (patient.fullName?.isNotEmpty == true
                                            ? patient.fullName![0].toUpperCase()
                                            : '?'),
                                        style: TextStyleManager.caption
                                            .copyWith(
                                              color: context.colors.textInverse,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Text(patient.fullName ?? ''),
                                  Text(
                                    patient.isVIP ?? false
                                        ? context.l10n.patients_view_vip
                                        : '',
                                  ),
                                ],
                              ),
                              Text(patient.email ?? ''),
                            ],
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          '${patient.dateOfBirth != null ? DateFormat('MMM dd, yyyy').format(patient.dateOfBirth!) : context.l10n.common_na} / ${patient.age?.toString() ?? context.l10n.common_na}',
                        ),
                      ),
                      DataCell(Text(patient.gender ?? '')),
                      DataCell(Text(patient.mobile ?? '')),
                      DataCell(Text(patient.bloodType ?? '')),
                      DataCell(
                        Text(
                          patient.isActive ?? false
                              ? context.l10n.patients_view_active
                              : context.l10n.patients_view_inactive,
                        ),
                      ),
                      DataCell(
                        Row(
                          spacing: 8,
                          children: [
                            IconButton(
                              tooltip: context.l10n.patients_view_viewAction,
                              icon: const Icon(Icons.visibility),
                              color: context.colors.primary,
                              onPressed: () {
                                _showPatientDetailsDialog(context, patient);
                              },
                            ),
                            IconButton(
                              tooltip: context.l10n.patients_view_editAction,
                              icon: const Icon(Icons.edit),
                              color: context.colors.textPrimary,
                              onPressed: () async {
                                final result = await AddEditPatientDialog.show(
                                  context,
                                  patient: patient,
                                );
                                if (result == true) {
                                  controller.loadPatients();
                                }
                              },
                            ),
                            IconButton(
                              tooltip: context.l10n.patients_view_deleteAction,
                              icon: const Icon(Icons.delete),
                              color: context.colors.error,
                              onPressed: () {
                                _showDeleteConfirmation(
                                  context,
                                  patient,
                                  controller,
                                );
                              },
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

  void _showDeleteConfirmation(
    BuildContext context,
    Patient patient,
    PatientsController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.patients_view_confirmDeleteTitle),
        content: Text(
          context.l10n.patients_view_confirmDeleteMsg(
            patient.fullName ?? 'Unknown',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.patients_view_cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (patient.id != null) {
                await controller.deletePatient(patient.id!);
              }
            },
            child: Text(
              context.l10n.patients_view_deleteAction,
              style: TextStyle(color: context.colors.error),
            ),
          ),
        ],
      ),
    );
  }

  void _showPatientDetailsDialog(BuildContext context, Patient patient) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        scrollable: true,
        title: Text(
          patient.fullName ?? context.l10n.patients_view_patientDetails,
        ),
        content: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AppDetailRow(context.l10n.patients_view_columnMrn, patient.mrn),
              AppDetailRow(context.l10n.patients_view_name, patient.fullName),
              AppDetailRow(
                context.l10n.patients_view_dob,
                patient.dateOfBirth != null
                    ? DateFormat('MMM dd, yyyy').format(patient.dateOfBirth!)
                    : null,
              ),
              AppDetailRow(
                context.l10n.patients_view_age,
                patient.age?.toString(),
              ),
              AppDetailRow(
                context.l10n.patients_view_columnGender,
                patient.gender,
              ),
              AppDetailRow(
                context.l10n.patients_view_bloodType,
                patient.bloodType,
              ),
              AppDetailRow(
                context.l10n.patients_view_nationalId,
                patient.nationalId,
              ),
              AppDetailRow(context.l10n.patients_view_email, patient.email),
              AppDetailRow(context.l10n.patients_view_mobile, patient.mobile),
              AppDetailRow(context.l10n.patients_view_address, patient.address),
              const Divider(),
              AppDetailRow(
                context.l10n.patients_view_emergencyContact,
                patient.emergencyContactName,
              ),
              AppDetailRow(
                context.l10n.patients_view_emergencyPhone,
                patient.emergencyContactPhone,
              ),
              AppDetailRow(
                context.l10n.patients_view_relationship,
                patient.emergencyContactRelationship,
              ),
              const Divider(),
              AppDetailRow(
                context.l10n.patients_view_columnStatus,
                patient.isActive ?? false
                    ? context.l10n.patients_view_active
                    : context.l10n.patients_view_inactive,
              ),
              AppDetailRow(
                context.l10n.patients_view_vip,
                patient.isVIP ?? false
                    ? context.l10n.patients_view_yes
                    : context.l10n.patients_view_no,
              ),
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
}

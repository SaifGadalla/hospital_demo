import 'package:hospital_demo/src/pages/appointments/add_edit_appointment_dialog/dialog.dart';
import 'package:intl/intl.dart';

import '../../../common.dart';
import 'controller.dart';

class AppointmentsPage extends ConsumerStatefulWidget {
  const AppointmentsPage({super.key});

  @override
  ConsumerState<AppointmentsPage> createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends ConsumerState<AppointmentsPage>
    with SearchMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(appointmentsControllerProvider.notifier).loadAppointments();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(appointmentsControllerProvider);
    final controller = ref.read(appointmentsControllerProvider.notifier);
    return AppPage(
      searchFormGroup: searchFormGroup,
      title: context.l10n.appointments_view_title,
      description: context.l10n.appointments_view_description,
      mainButtonTitle: context.l10n.appointments_view_schedule,
      mainButtonOnTap: () async {
        final result = await AddEditAppointmentDialog.show(context);
        if (result == true) {
          controller.loadAppointments();
        }
      },
      secondarybuttons: [
        TextButton(onPressed: () {}, child: Text(context.l10n.appointments_view_board)),
        TextButton(onPressed: () {}, child: Text(context.l10n.appointments_view_list)),
      ],
      hasSearch: true,
      onSearchFieldChanged: (control) {
        controller.getAppointments(searchTerm: control.value);
      },
      secondarySearchHeaderWidgets: [
        ReactiveForm(
          formGroup: controller.formGroup,
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              AppDropDownButton(
                formControlName: 'type',
                items: [
                  DropdownMenuItem(value: null, child: Text(context.l10n.appointments_view_allTypes)),
                  DropdownMenuItem(
                    value: 'Consultation',
                    child: Text(context.l10n.appointments_view_consultation),
                  ),
                  DropdownMenuItem(
                    value: 'Follow-up',
                    child: Text(context.l10n.appointments_view_followUp),
                  ),
                  DropdownMenuItem(
                    value: 'Procedure',
                    child: Text(context.l10n.appointments_view_procedure),
                  ),
                ],
                value: controller.formGroup.control('type').value,
                onChanged: (value) {
                  controller.getAppointments();
                },
                hint: context.l10n.appointments_view_allTypes,
              ),
              AppDatePicker(
                formControlName: 'date',
                onDateChanged: (value) {
                  controller.getAppointments();
                },
              ),
              TextButton(
                onPressed: () {
                  controller.formGroup.reset();
                  searchFormGroup.reset();
                  controller.getAppointments();
                },
                child: Text(context.l10n.appointments_view_clear),
              ),
            ],
          ),
        ),
      ],
      table: state.isLoading
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: CircularProgressIndicator(),
              ),
            )
          : DataTable(
              headingRowColor: WidgetStateProperty.all(context.colors.surfaceElevated),
              columns: [
                DataColumn(label: Text(context.l10n.appointments_view_apptNumber)),
                DataColumn(label: Text(context.l10n.appointments_view_dateTime)),
                DataColumn(label: Text(context.l10n.appointments_view_patient)),
                DataColumn(label: Text(context.l10n.appointments_view_type)),
                DataColumn(label: Text(context.l10n.appointments_view_doctor)),
                DataColumn(label: Text(context.l10n.appointments_view_status)),
              ],
              rows: state.appointments.map((appt) {
                return DataRow(
                  cells: [
                    DataCell(Text(appt.appointmentNumber ?? '')),
                    DataCell(
                      Text(
                        appt.appointmentDate != null
                            ? DateFormat(
                                'MM/dd/yyyy, h:mm a',
                              ).format(appt.appointmentDate!)
                            : '',
                      ),
                    ),
                    DataCell(Text(appt.patientName ?? '')),
                    DataCell(Text(appt.appointmentType ?? '')),
                    DataCell(Text(appt.doctorId ?? '')),
                    DataCell(Text(appt.status ?? '')),
                  ],
                );
              }).toList(),
            ),
    );
  }
}

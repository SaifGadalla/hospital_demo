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
      title: 'Appointments',
      description: 'Schedule, check-in, and complete patient visits.',
      mainButtonTitle: 'Schedule',
      mainButtonOnTap: () async {
        final result = await AddEditAppointmentDialog.show(context);
        if (result == true) {
          controller.loadAppointments();
        }
      },
      secondarybuttons: [
        TextButton(onPressed: () {}, child: const Text('Board')),
        TextButton(onPressed: () {}, child: const Text('List')),
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
                items: const [
                  DropdownMenuItem(value: null, child: Text('All types')),
                  DropdownMenuItem(
                    value: 'Consultation',
                    child: Text('Consultation'),
                  ),
                  DropdownMenuItem(
                    value: 'Follow-up',
                    child: Text('Follow-up'),
                  ),
                  DropdownMenuItem(
                    value: 'Procedure',
                    child: Text('Procedure'),
                  ),
                ],
                value: controller.formGroup.control('type').value,
                onChanged: (value) {
                  controller.getAppointments();
                },
                hint: 'All types',
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
                child: const Text('Clear'),
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
              headingRowColor: WidgetStateProperty.all(ColorManager.surfaceElevated),
              columns: const [
                DataColumn(label: Text('Appt #')),
                DataColumn(label: Text('Date / time')),
                DataColumn(label: Text('Patient')),
                DataColumn(label: Text('Type')),
                DataColumn(label: Text('Doctor')),
                DataColumn(label: Text('Status')),
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

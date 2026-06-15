import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common.dart';
import 'add_medical_record_dialog/dialog.dart';
import 'controller.dart';

class MedicalRecordsPage extends ConsumerStatefulWidget {
  const MedicalRecordsPage({super.key});

  @override
  ConsumerState<MedicalRecordsPage> createState() => _MedicalRecordsPageState();
}

class _MedicalRecordsPageState extends ConsumerState<MedicalRecordsPage>
    with SearchMixin {
  MedicalRecord? _selectedRecord;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(medicalRecordsControllerProvider.notifier).loadMedicalRecords();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(medicalRecordsControllerProvider);
    final controller = ref.read(medicalRecordsControllerProvider.notifier);

    return AppPage(
      title: context.l10n.medical_records_view_title,
      description: context.l10n.medical_records_view_description,
      mainButtonTitle: context.l10n.medical_records_view_newRecord,
      mainButtonOnTap: () async {
        final result = await AddMedicalRecordDialog.show(context);
        if (result == true) {
          controller.loadMedicalRecords();
        }
      },
      customBody: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ScreenTypeLayout.builder(
              mobile: (context) => Column(
                spacing: 20,
                children: [
                  _buildRecordsList(state, controller),
                  _buildRecordDetails(controller),
                ],
              ),
              desktop: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  SizedBox(
                    width: 350,
                    child: _buildRecordsList(state, controller),
                  ),
                  Expanded(child: _buildRecordDetails(controller)),
                ],
              ),
            ),
    );
  }

  Widget _buildRecordsList(
    MedicalRecordsState state,
    MedicalRecordsController controller,
  ) {
    return Material(
      color: context.colors.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: context.colors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.medical_records_view_records,
              style: TextStyleManager.h4,
            ),
            const Divider(),
            AppSearchBar(
              formGroup: searchFormGroup,
              onSearchFieldChanged: (control) async {
                await controller.getMedicalRecords(searchTerm: control.value);
              },
            ),
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.medicalRecords.length,
              itemBuilder: (context, index) {
                final record = state.medicalRecords[index];
                final isSelected = _selectedRecord?.id == record.id;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    selected: isSelected,
                    selectedTileColor: context.colors.primary.withValues(
                      alpha: 0.05,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: isSelected
                            ? context.colors.primary
                            : context.colors.border,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: Text(
                      context.l10n.medical_records_view_recordId(
                        record.id?.substring(0, 8) ?? 'N/A',
                      ),
                      style: TextStyleManager.bodyMedium.copyWith(
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      record.visitDate != null
                          ? DateFormat('MMM dd, yyyy').format(record.visitDate!)
                          : context.l10n.medical_records_view_noDate,
                      style: TextStyleManager.caption,
                    ),
                    onTap: () {
                      setState(() {
                        _selectedRecord = record;
                      });
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecordDetails(MedicalRecordsController controller) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surfaceElevated,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.border),
      ),
      padding: const EdgeInsets.all(24.0),
      child: _selectedRecord == null
          ? Center(
              child: Text(
                context.l10n.medical_records_view_selectRecord,
                style: TextStyleManager.bodyMedium.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.medical_records_view_recordDetails,
                        style: TextStyleManager.h3,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          _showDeleteConfirmation(context, controller);
                        },
                        icon: const Icon(Icons.delete, color: Colors.red),
                        label: Text(
                          context.l10n.medical_records_view_delete,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  _buildDetailRow(
                    context.l10n.medical_records_view_patientId,
                    _selectedRecord!.patientId,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_doctorId,
                    _selectedRecord!.doctorId,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_diagnosisCode,
                    _selectedRecord!.diagnosisCode,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_diagnosisDescription,
                    _selectedRecord!.diagnosisDescription,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_subjective,
                    _selectedRecord!.subjective,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_objective,
                    _selectedRecord!.objective,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_assessment,
                    _selectedRecord!.assessment,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_plan,
                    _selectedRecord!.plan,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_allergies,
                    _selectedRecord!.allergies,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_currentMedications,
                    _selectedRecord!.currentMedications,
                  ),
                  _buildDetailRow(
                    context.l10n.medical_records_view_clinicalNotes,
                    _selectedRecord!.clinicalNotes,
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildDetailRow(String label, String? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyleManager.label),
        const SizedBox(height: 4),
        Text(value ?? "N/A", style: TextStyleManager.bodyMedium),
      ],
    );
  }

  void _showDeleteConfirmation(
    BuildContext context,
    MedicalRecordsController controller,
  ) {
    if (_selectedRecord == null) return;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.l10n.medical_records_view_deleteTitle),
        content: Text(context.l10n.medical_records_view_deleteMsg),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.l10n.medical_records_view_cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (_selectedRecord!.id != null) {
                await controller.deleteMedicalRecord(_selectedRecord!.id!);
                setState(() {
                  _selectedRecord = null;
                });
              }
            },
            child: Text(
              context.l10n.medical_records_view_delete,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

import '../../common.dart';

class AppDatePicker extends StatelessWidget {
  const AppDatePicker({
    super.key,
    required this.formControlName,
    this.firstDate,
    this.lastDate,
    this.onDateChanged,
    this.width = 200,
  });

  final String formControlName;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime)? onDateChanged;
  final double width;

  @override
  Widget build(BuildContext context) {
    DateTime firstDate = this.firstDate ?? DateTime(1999);
    DateTime lastDate = this.lastDate ?? DateTime(2040);
    return ReactiveFormField<DateTime?, DateTime?>(
      formControlName: formControlName,
      builder: (field) => SizedBox(
        width: width,
        child: TextButton(
          onPressed: () async {
            final value = await showDatePicker(
              context: context,
              firstDate: firstDate,
              lastDate: lastDate,
            );
            if (value != null) {
              field.didChange(value);
              onDateChanged?.call(value);
            }
          },
          child: Row(
            spacing: 8,
            children: [
              Text(
                '${field.value?.month ?? 'mm'}/${field.value?.day ?? 'dd'}/${field.value?.year ?? 'yyyy'}',
              ),
              const Icon(Icons.calendar_today, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

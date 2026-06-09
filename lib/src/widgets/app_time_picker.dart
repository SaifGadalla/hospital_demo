import '../../../../common.dart';

class AppTimePicker extends StatelessWidget {
  const AppTimePicker({
    super.key,
    required this.formControlName,
    this.initialTime = const TimeOfDay(hour: 12, minute: 00),
    this.onTimeChanged,
    this.width = 200,
  });

  final String formControlName;
  final TimeOfDay initialTime;
  final Function(TimeOfDay)? onTimeChanged;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormField<TimeOfDay?, TimeOfDay?>(
      formControlName: formControlName,
      builder: (field) => SizedBox(
        width: width,
        child: TextButton(
          onPressed: () async {
            final value = await showTimePicker(
              context: context,
              initialTime: initialTime,
            );
            if (value != null) {
              field.didChange(value);
              onTimeChanged?.call(value);
            }
          },
          child: Row(
            spacing: 8,
            children: [
              Text(field.value?.format(context) ?? initialTime.format(context)),
              const Icon(Icons.calendar_today, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

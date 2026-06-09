import '../../common.dart';

/// Formats a [DateTime] to ISO 8601 UTC string with milliseconds and Z suffix.
/// Example output: `2026-05-01T00:00:00.413Z`
String formatDateTimeToUtcIso(DateTime dateTime) {
  final utc = dateTime.toUtc();
  final year = utc.year.toString().padLeft(4, '0');
  final month = utc.month.toString().padLeft(2, '0');
  final day = utc.day.toString().padLeft(2, '0');
  final hour = utc.hour.toString().padLeft(2, '0');
  final minute = utc.minute.toString().padLeft(2, '0');
  final second = utc.second.toString().padLeft(2, '0');
  final millis = utc.millisecond.toString().padLeft(3, '0');
  return '$year-$month-${day}T$hour:$minute:$second.${millis}Z';
}

Widget triageLevelWidget(int? triageLevel) {
  final TextStyle textStyle = TextStyleManager.caption.copyWith(fontWeight: FontWeight.bold);

  Color bgColor;
  Color textColor;
  Color borderColor;

  switch (triageLevel) {
    case 1:
      bgColor = ColorManager.errorBackground;
      textColor = ColorManager.error;
      borderColor = ColorManager.error;
      break;
    case 2:
      bgColor = ColorManager.warningBackground;
      textColor = ColorManager.warning;
      borderColor = ColorManager.warning;
      break;
    case 3:
      bgColor = const Color(0xFFFEF08A); // Yellow 200
      textColor = const Color(0xFFCA8A04); // Yellow 600
      borderColor = const Color(0xFFCA8A04);
      break;
    case 4:
    case 5:
      bgColor = ColorManager.successBackground;
      textColor = ColorManager.success;
      borderColor = ColorManager.success;
      break;
    default:
      bgColor = ColorManager.surfaceElevated;
      textColor = ColorManager.textSecondary;
      borderColor = ColorManager.border;
  }

  final triageText = 'ESI $triageLevel';

  if (triageLevel == 0 || triageLevel == null) {
    return Text('Not Triaged', style: textStyle.copyWith(color: ColorManager.textSecondary));
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: borderColor, width: 1),
    ),
    child: Text(
      triageText,
      style: textStyle.copyWith(color: textColor),
    ),
  );
}

Widget statusWidget(String status) {
  final TextStyle textStyle = TextStyleManager.caption;
  final statusText = switch (status) {
    "InTreatment" => 'In treatment',
    "Waiting" => 'Waiting',
    "Cancelled" => 'Cancelled',
    "Completed" => 'Completed',
    "Closed" => 'Closed',
    _ => 'Unknown',
  };
  
  final color = ColorManager.getStatusColor(statusText);
  // Create a light background for the status color
  final bgColor = color.withValues(alpha: 0.1);

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: bgColor,
      border: Border.all(color: color.withValues(alpha: 0.5)),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(statusText, style: textStyle.copyWith(color: color), maxLines: 1),
  );
}

int getOccupiedBeds(List<Bed> beds, String wardId) {
  return beds
      .where((bed) => bed.wardId == wardId && bed.status == 'Occupied')
      .length;
}

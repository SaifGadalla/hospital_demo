import '../../common.dart';

class AppDetailRow extends StatelessWidget {
  const AppDetailRow(
    this.label,
    this.value, {
    super.key,
    this.labelWidth = 160,
  });

  final String label;
  final String? value;
  final double labelWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: labelWidth,
            child: Text(label, style: TextStyleManager.label),
          ),
          Expanded(
            child: Text(value ?? context.l10n.common_na, style: TextStyleManager.bodyMedium),
          ),
        ],
      ),
    );
  }
}

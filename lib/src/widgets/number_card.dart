import 'package:hospital_demo/common.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NumberCard extends ConsumerWidget {
  final String title;
  final IconData icon;
  final String value;
  final String? subtitle;

  const NumberCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: getValueForScreenType<double>(
        context: context,
        mobile: double.infinity,
        tablet: 240,
        desktop: 260,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colors.border),
        color: context.colors.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyleManager.bodyMedium.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colors.primaryLight.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(icon, color: context.colors.primary, size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(value, style: TextStyleManager.h2),
          if (subtitle != null)
            Text(subtitle!, style: TextStyleManager.caption),
        ],
      ),
    );
  }
}

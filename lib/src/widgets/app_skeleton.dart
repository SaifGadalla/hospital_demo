import '../../common.dart';

class AppSkeleton extends StatelessWidget {
  const AppSkeleton({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.colors.border.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
      ),
    );
  }
}

class AppTableSkeleton extends StatelessWidget {
  const AppTableSkeleton({
    super.key,
    this.columns = 5,
    this.rows = 5,
  });

  final int columns;
  final int rows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(rows, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(columns, (colIndex) {
              return AppSkeleton(
                width: 80.0 + (colIndex % 3) * 40,
                height: 20,
              );
            }),
          ),
        );
      }),
    );
  }
}

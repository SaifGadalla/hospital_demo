import 'package:hospital_demo/common.dart';
import 'package:hospital_demo/src/pages/shell/widgets/drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppShell extends ConsumerWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTablet = getValueForScreenType(context: context, mobile: true, tablet: true, desktop: false);
    return Scaffold(
      body: Row(
        children: [
          if (!isTablet) AppDrawer(),
          Expanded(flex: 4, child: child),
        ],
      ),
      drawer: isTablet ? AppDrawer() : null,
    );
  }
}

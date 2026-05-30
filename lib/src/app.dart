import '../common.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'hospital_demo',
      theme: lightTheme,
      routerConfig: ref.watch(routerProvider),
      builder: (context, child) {
        return child ?? const SizedBox.shrink();
      },
    );
  }
}

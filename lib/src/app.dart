import 'package:toastification/toastification.dart';

import '../common.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return ToastificationWrapper(
      config: const ToastificationConfig(alignment: Alignment.topCenter),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'hospital_demo',
        themeMode: themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: ref.watch(routerProvider),
        localizationsDelegates: [],
        builder: (context, child) {
          return child ?? const SizedBox.shrink();
        },
      ),
    );
  }
}

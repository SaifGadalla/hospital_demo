import 'package:hospital_demo/common.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Welcome To Our Hospital'),
          Text('A unified platform for hospital operations, finance, HR, supply chain, and more.'),
        ],
      ),
    );
  }
}

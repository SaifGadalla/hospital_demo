import '../../../common.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPage(
      title: 'Welcome to CarePulse',
      description:
          'A unified platform for hospital operations, finance, HR, supply chain, and more.',
      mainButtonTitle: 'Get Started',
      mainButtonOnTap: () {},
      customBody: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Streamline your hospital management with CarePulse.',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

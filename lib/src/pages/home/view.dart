import '../../../common.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppPage(
      title: context.l10n.home_welcomeTitle,
      description: context.l10n.home_description,
      mainButtonTitle: context.l10n.home_getStarted,
      mainButtonOnTap: () {
        context.goNamed(AppRoutes.dashboard);
      },
      customBody: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            context.l10n.home_streamlineMessage,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

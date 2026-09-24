import '../../../common.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.l10n.drawer_userRole,
              style: TextStyleManager.h4,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Mark the user as authenticated.
                // The route guard will handle the redirect to '/'.
                ref.read(authStateProvider.notifier).login();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

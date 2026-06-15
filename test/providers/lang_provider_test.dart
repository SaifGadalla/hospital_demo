import 'package:flutter_test/flutter_test.dart';
import 'package:hospital_demo/common.dart';

void main() {
  test('LangNotifier initializes with English', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(container.read(langProvider), const Locale('en'));
  });

  test('LangNotifier can update locale to Arabic', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    container.read(langProvider.notifier).setLocale(const Locale('ar'));

    expect(container.read(langProvider), const Locale('ar'));
  });
}

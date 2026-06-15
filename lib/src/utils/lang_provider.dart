import '../../common.dart';

class LangNotifier extends Notifier<Locale> {
  @override
  Locale build() => const Locale('en');

  void setLocale(Locale locale) {
    state = locale;
  }
}

final langProvider = NotifierProvider<LangNotifier, Locale>(LangNotifier.new);

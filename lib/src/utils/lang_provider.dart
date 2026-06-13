import 'package:flutter_riverpod/legacy.dart';
import '../../common.dart';

final langProvider = StateProvider<Locale>((ref) => const Locale('en'));

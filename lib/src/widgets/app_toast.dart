import 'package:toastification/toastification.dart';

import '../../common.dart';

class AppToast {
  static void show(String msg) {
    toastification.show(
      type: ToastificationType.info,
      style: ToastificationStyle.simple,
      title: Text(msg),
      autoCloseDuration: const Duration(seconds: 3),
      // backgroundColor: AppColorScheme.kLightSurfaceColor,
      borderRadius: BorderRadius.circular(kBorderRadius),
      borderSide: BorderSide(
        // color: AppColorScheme.kLightOnSurfaceColor,
      ),
    );
  }
}

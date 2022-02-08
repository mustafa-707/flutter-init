import 'dart:io';
import 'package:get/get.dart';
import 'package:wootasali/utils/lang/lang_service.dart';

class TransitionHelper {
  static Transition normalTransition = _normalTransitionLogic();
  static Transition fullDialogTransition = _fullDialogTransitionLogic();

  static Transition _normalTransitionLogic() {
    return LocalizationService.isArabic
        ? Transition.rightToLeft
        : Transition.leftToRight;
  }

  static Transition _fullDialogTransitionLogic() {
    return Platform.isIOS ? Transition.cupertinoDialog : Transition.downToUp;
  }
}

import 'dart:io';

import 'package:awreportadmin/utils/lang/lang_service.dart';
import 'package:get/get.dart';

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

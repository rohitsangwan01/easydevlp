library easydevlp;

import 'package:easydevlp/data/UI.dart';
import 'package:get/get.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

/// few GetX Shortcuts
class GetEasy {
  ///Shows a DialogBox
  static showDialog() {
    Get.defaultDialog(
        title: "Hey There",
        onCancel: () {},
        onConfirm: () {
          Get.back();
        });
  }

  ///Shows a Error/Success Bar
  static showError(message) => Ui.ErrorSnackBar(message: message).show();
  static showSuccess(message) => Ui.SuccessSnackBar(message: message).show();

  ///Shows a Loading Bar
  static showLoading() => Ui.ShowLoadingBar();
  static closeLoading() => Ui.CloseLoading();

  ///Shows Future
  static waitFuture(int sec) async =>
      await Future.delayed(Duration(seconds: sec));
}

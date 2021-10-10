// ignore_for_file: deprecated_member_use, non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ui {
  static GetBar SuccessSnackBar(
      {String title = 'Success', required String message}) {
    return GetBar(
      titleText: Text(title),
      messageText: Text(
        message,
      ),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20),
      backgroundColor: Get.theme.accentColor,
      icon: Icon(Icons.check_circle_outline,
          size: 32, color: Get.theme.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      dismissDirection: SnackDismissDirection.HORIZONTAL,
      duration: Duration(seconds: 5),
    );
  }

  static GetBar ErrorSnackBar(
      {String title = 'Error',
      Duration duration: const Duration(seconds: 5),
      required String message}) {
    return GetBar(
      titleText: Text(title),
      messageText: Text(
        message,
      ),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20),
      backgroundColor: Colors.redAccent,
      icon: Icon(Icons.remove_circle_outline,
          size: 32, color: Get.theme.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      duration: duration,
    );
  }

  static GetBar defaultSnackBar(
      {String title = 'Alert', required String message}) {
    Get.log("[$title] $message", isError: false);
    return GetBar(
      titleText: Text('Alert'),
      messageText: Text(
        message,
      ),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20),
      backgroundColor: Get.theme.primaryColor,
      borderColor: Get.theme.focusColor.withOpacity(0.1),
      icon: Icon(Icons.warning_amber_rounded,
          size: 32, color: Get.theme.hintColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      duration: Duration(seconds: 5),
    );
  }

  static GetBar notificationSnackBar(
      {String title = 'Notification', required String message}) {
    Get.log("[$title] $message", isError: false);
    return GetBar(
      titleText: Text(title),
      messageText: Text(
        message,
      ),
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.all(20),
      backgroundColor: Colors.amberAccent,
      borderColor: Get.theme.focusColor.withOpacity(0.1),
      icon:
          Icon(Icons.notifications_none, size: 32, color: Get.theme.hintColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      duration: Duration(seconds: 5),
    );
  }

  static void ShowLoadingBar() {
    Get.dialog(Center(
      child: CircularProgressIndicator(),
    ));
  }

  static void CloseLoading() {
    if (Get.isDialogOpen == true) Get.back();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarUtils {
  static void showErrorSnackbar(String message) {
    Get.snackbar(
      'Hello',
      message,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white, // Text color
      snackPosition: SnackPosition.TOP, // Adjust the position
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // Adjust the padding
      snackStyle: SnackStyle.GROUNDED, // Adjust the style
    );
  }

  static void showPermissionSnackbar() {
    Get.snackbar(
      'Permission Required',
      'Location permission is required',
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      snackStyle: SnackStyle.GROUNDED,
    );
  }
}

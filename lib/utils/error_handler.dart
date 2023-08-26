import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorHandler {
  static void handleError(BuildContext context, dynamic error) {
    if (error is FetchDataException) {
      showSnackBar(context, 'Internet connection is not available.');
    } else if (error is PermissionException) {
      showSnackBar(context, 'Permission denied. Please grant the required permission.');
    } else if (error is InternetException) {
      showSnackBar(context, 'No internet connection. Please check your connection and try again.');
    } else if (error is DataFetchException) {
      showSnackBar(context, 'Failed to fetch data. Please try again.');
    } else {
      showSnackBar(context, 'An error occurred. Please try again later.');
    }
  }

  static void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class FetchDataException implements Exception {}

class PermissionException implements Exception {}

class InternetException implements Exception {}

class DataFetchException implements Exception {}

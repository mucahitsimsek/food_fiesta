import 'package:flutter/material.dart';
import 'package:food_fiesta/product/utility/project_manager.dart';
import 'package:gen/gen.dart';

@immutable
final class CustomSnackbar {
  static void showSnackbar({
    required String title,
  }) {
    if (ProjectManager.messengerkey.currentState?.mounted == false) return;
    final snackBar = SnackBar(
      content: Text(title),
      backgroundColor: ColorName.mainColorBlack,
    );
    ProjectManager.messengerkey.currentState?.clearSnackBars();
    ProjectManager.messengerkey.currentState?.showSnackBar(
      snackBar,
    );
  }
}

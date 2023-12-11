import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/app_screen/models/app_model.dart';

/// A provider class for the AppScreen.
///
/// This provider manages the state of the AppScreen, including the
/// current appModelObj

// ignore_for_file: must_be_immutable
class AppProvider extends ChangeNotifier {
  AppModel appModelObj = AppModel();

  @override
  void dispose() {
    super.dispose();
  }
}

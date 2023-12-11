import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/welcome_screen_one_screen/models/welcome_screen_one_model.dart';

/// A provider class for the WelcomeScreenOneScreen.
///
/// This provider manages the state of the WelcomeScreenOneScreen, including the
/// current welcomeScreenOneModelObj

// ignore_for_file: must_be_immutable
class WelcomeScreenOneProvider extends ChangeNotifier {
  WelcomeScreenOneModel welcomeScreenOneModelObj = WelcomeScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}

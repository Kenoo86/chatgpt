import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/welcome_screen_two_screen/models/welcome_screen_two_model.dart';

/// A provider class for the WelcomeScreenTwoScreen.
///
/// This provider manages the state of the WelcomeScreenTwoScreen, including the
/// current welcomeScreenTwoModelObj

// ignore_for_file: must_be_immutable
class WelcomeScreenTwoProvider extends ChangeNotifier {
  WelcomeScreenTwoModel welcomeScreenTwoModelObj = WelcomeScreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}

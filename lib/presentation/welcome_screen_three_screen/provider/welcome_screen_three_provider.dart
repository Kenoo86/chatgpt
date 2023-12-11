import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/welcome_screen_three_screen/models/welcome_screen_three_model.dart';

/// A provider class for the WelcomeScreenThreeScreen.
///
/// This provider manages the state of the WelcomeScreenThreeScreen, including the
/// current welcomeScreenThreeModelObj

// ignore_for_file: must_be_immutable
class WelcomeScreenThreeProvider extends ChangeNotifier {
  WelcomeScreenThreeModel welcomeScreenThreeModelObj =
      WelcomeScreenThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}

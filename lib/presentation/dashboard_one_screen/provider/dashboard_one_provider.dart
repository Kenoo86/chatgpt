import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/dashboard_one_screen/models/dashboard_one_model.dart';

/// A provider class for the DashboardOneScreen.
///
/// This provider manages the state of the DashboardOneScreen, including the
/// current dashboardOneModelObj

// ignore_for_file: must_be_immutable
class DashboardOneProvider extends ChangeNotifier {
  DashboardOneModel dashboardOneModelObj = DashboardOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}

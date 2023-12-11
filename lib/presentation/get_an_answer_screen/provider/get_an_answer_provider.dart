import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/get_an_answer_screen/models/get_an_answer_model.dart';

/// A provider class for the GetAnAnswerScreen.
///
/// This provider manages the state of the GetAnAnswerScreen, including the
/// current getAnAnswerModelObj

// ignore_for_file: must_be_immutable
class GetAnAnswerProvider extends ChangeNotifier {
  GetAnAnswerModel getAnAnswerModelObj = GetAnAnswerModel();

  @override
  void dispose() {
    super.dispose();
  }
}

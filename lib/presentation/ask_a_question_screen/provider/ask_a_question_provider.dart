import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/ask_a_question_screen/models/ask_a_question_model.dart';

/// A provider class for the AskAQuestionScreen.
///
/// This provider manages the state of the AskAQuestionScreen, including the
/// current askAQuestionModelObj
class AskAQuestionProvider extends ChangeNotifier {
  AskAQuestionModel askAQuestionModelObj = AskAQuestionModel();

  @override
  void dispose() {
    super.dispose();
  }
}

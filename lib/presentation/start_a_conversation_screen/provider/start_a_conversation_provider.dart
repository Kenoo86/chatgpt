import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/start_a_conversation_screen/models/start_a_conversation_model.dart';

/// A provider class for the StartAConversationScreen.
///
/// This provider manages the state of the StartAConversationScreen, including the
/// current startAConversationModelObj

// ignore_for_file: must_be_immutable
class StartAConversationProvider extends ChangeNotifier {
  StartAConversationModel startAConversationModelObj =
      StartAConversationModel();

  @override
  void dispose() {
    super.dispose();
  }
}

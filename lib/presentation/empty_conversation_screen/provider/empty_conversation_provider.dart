import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/empty_conversation_screen/models/empty_conversation_model.dart';

/// A provider class for the EmptyConversationScreen.
///
/// This provider manages the state of the EmptyConversationScreen, including the
/// current emptyConversationModelObj

// ignore_for_file: must_be_immutable
class EmptyConversationProvider extends ChangeNotifier {
  EmptyConversationModel emptyConversationModelObj = EmptyConversationModel();

  @override
  void dispose() {
    super.dispose();
  }
}

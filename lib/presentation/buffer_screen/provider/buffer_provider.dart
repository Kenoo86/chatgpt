import 'package:flutter/material.dart';
import 'package:karim_s_application1/core/app_export.dart';
import 'package:karim_s_application1/presentation/buffer_screen/models/buffer_model.dart';

/// A provider class for the BufferScreen.
///
/// This provider manages the state of the BufferScreen, including the
/// current bufferModelObj
class BufferProvider extends ChangeNotifier {
  BufferModel bufferModelObj = BufferModel();

  @override
  void dispose() {
    super.dispose();
  }
}

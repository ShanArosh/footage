import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:footage/src/renderer/renderer.dart';

import 'preview/run.dart';

void runVideo(
  Widget app, {
  bool timeline = true,
  bool panel = true,
  Future<dynamic> Function()? callback,
}) {
  if (!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST')) {
    renderVideo(app,callback: callback);
  } else {
    previewVideo(
      app,
      timeline: timeline,
      panel: panel,
    );
  }
}

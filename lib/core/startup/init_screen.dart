import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_sizes.dart';

Future<void> initScreen() async {
  // * Set minimum window size for Desktop apps
  if (!kIsWeb) {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      await DesktopWindow.setMinWindowSize(const Size(AppSizes.minDesktopWidth, AppSizes.minDesktopHeight));
    }
  }
}

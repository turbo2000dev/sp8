import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:sp8/core/environments/environnements.dart';

Future<void> initSentry({String sentryDsn = "", required Widget rootWidget}) async {
  // final env = container.read(environmentProvider);

  await SentryFlutter.init(
    (options) {
      options.dsn = sentryDsn;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      options.attachScreenshot = true;
    },
    // ignore: missing_provider_scope
    appRunner: () => runApp(rootWidget),
  );
}

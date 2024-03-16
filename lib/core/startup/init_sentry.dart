import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sp8/core/environments/environnements.dart';

Future<void> initSentry({required ProviderContainer container, required void Function() appRunner}) async {
  final env = container.read(environmentProvider);

  await SentryFlutter.init((options) {
    options.dsn = env.sentryDsn;
    options.tracesSampleRate =
        1.0; // 100% of traces will be sent to Sentry server. You should start with 1 and decrease it once you have more users.
    options.environment = env.name;
  }, appRunner: appRunner);

  container.dispose();
}

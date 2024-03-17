import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sp8/core/environments/environnements.dart';
import 'package:sp8/core/startup/app_bootstrap_firebase.dart';
import 'package:sp8/core/startup/app_bootstrap.dart';
import 'package:sp8/core/startup/init_router.dart';
import 'package:sp8/core/startup/init_screen.dart';
import 'package:sp8/core/startup/init_sentry.dart';
import 'firebase_options.dart';

void main() async {
  // * Wait for Flutter to properly initialize
  WidgetsFlutterBinding.ensureInitialized();

  // * Wait for Firebase to properly intialize
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // * GoRouter initial setup
  initRouter();

  // * Screen initial setup
  await initScreen();

  // * Create an app bootstrap instance
  final appBootstrap = AppBootstrap();
  // await appBootstrap.setupEmulators();

  // * Create a container configured with all the Firebase repositories
  final container = await appBootstrap.createFirebaseProviderContainer();

  // * Use the container above to create the root widget
  final root = appBootstrap.createRootWidget(container: container);

  // * Get the environment variables
  final env = container.read(environmentProvider);

  // * Intialize Sentry, incidentally starting the application
  if (env.sentryDsn?.isEmpty ?? true) {
    // ignore: missing_provider_scope
    runApp(root);
  } else {
    initSentry(
      sentryDsn: env.sentryDsn!,
      rootWidget: root,
    );
  }
}

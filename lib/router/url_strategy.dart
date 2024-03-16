// *
// * URL_STRATEGY
// *
// * The purpose of these files ("url_strat*.dart") is a "trick" to import
// * the file "flutter_web_plugins.dart" ONLY if the target to be built
// * is a Web application.
// *
// * Importing "flutter_web_plugins.dart" for a non-Web application would raise
// * an exception at runtime.
// *

export 'url_strategy_noop.dart' if (dart.library.html) 'url_strategy_web.dart';

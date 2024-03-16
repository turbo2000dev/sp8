import 'package:go_router/go_router.dart';
import 'package:sp8/router/url_strategy.dart';

void initRouter() {
  // * Ensure that the '#' disappear from URL of Web apps
  usePathUrlStrategy();

  // * Ensure URL changes in the address bar when using push / pushNamed
  // more info here: https://docs.google.com/document/d/1VCuB85D5kYxPR3qYOjVmw8boAGKb7k62heFyfFHTOvw/edit
  GoRouter.optionURLReflectsImperativeAPIs = true;
}

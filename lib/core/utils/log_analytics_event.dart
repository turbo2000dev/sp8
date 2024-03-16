import 'package:firebase_analytics/firebase_analytics.dart';

void logAnalyticsEvent(String event) async {
  try {
    await FirebaseAnalytics.instance.logEvent(name: event);
  } catch (e) {
    return;
  }
}

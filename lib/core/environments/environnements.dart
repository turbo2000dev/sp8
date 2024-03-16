import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'environnements.freezed.dart';

final environmentProvider = Provider<Environment>(
  (ref) => Environment.load(),
);

@freezed
class Environment with _$Environment {
  const factory Environment({
    /// Name of the environment (dev, staging or prod)
    String? name,

    /// Sentry Data Source Name used to connect to the Sentry service
    String? sentryDsn,
  }) = _Environment;

  factory Environment.load() {
    return const Environment(
      name: String.fromEnvironment('ENV', defaultValue: 'dev'),
      sentryDsn: String.fromEnvironment("SENTRY_DSN"),
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountsListStreamHash() =>
    r'a58001e434ea9a4b7b231f0e04372752fac10b83';

/// See also [accountsListStream].
@ProviderFor(accountsListStream)
final accountsListStreamProvider =
    AutoDisposeStreamProvider<List<Account>>.internal(
  accountsListStream,
  name: r'accountsListStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountsListStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsListStreamRef = AutoDisposeStreamProviderRef<List<Account>>;
String _$accountsListFutureHash() =>
    r'e434f8241d08b45d8a81ffce3377e141c04b9065';

/// See also [accountsListFuture].
@ProviderFor(accountsListFuture)
final accountsListFutureProvider =
    AutoDisposeFutureProvider<List<Account>>.internal(
  accountsListFuture,
  name: r'accountsListFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountsListFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountsListFutureRef = AutoDisposeFutureProviderRef<List<Account>>;
String _$accountStreamHash() => r'7a65d6fd0360ef025185e32458ce9e9bcd526e35';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [accountStream].
@ProviderFor(accountStream)
const accountStreamProvider = AccountStreamFamily();

/// See also [accountStream].
class AccountStreamFamily extends Family<AsyncValue<Account?>> {
  /// See also [accountStream].
  const AccountStreamFamily();

  /// See also [accountStream].
  AccountStreamProvider call(
    String id,
  ) {
    return AccountStreamProvider(
      id,
    );
  }

  @override
  AccountStreamProvider getProviderOverride(
    covariant AccountStreamProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountStreamProvider';
}

/// See also [accountStream].
class AccountStreamProvider extends AutoDisposeStreamProvider<Account?> {
  /// See also [accountStream].
  AccountStreamProvider(
    String id,
  ) : this._internal(
          (ref) => accountStream(
            ref as AccountStreamRef,
            id,
          ),
          from: accountStreamProvider,
          name: r'accountStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountStreamHash,
          dependencies: AccountStreamFamily._dependencies,
          allTransitiveDependencies:
              AccountStreamFamily._allTransitiveDependencies,
          id: id,
        );

  AccountStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<Account?> Function(AccountStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountStreamProvider._internal(
        (ref) => create(ref as AccountStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Account?> createElement() {
    return _AccountStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountStreamProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountStreamRef on AutoDisposeStreamProviderRef<Account?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AccountStreamProviderElement
    extends AutoDisposeStreamProviderElement<Account?> with AccountStreamRef {
  _AccountStreamProviderElement(super.provider);

  @override
  String get id => (origin as AccountStreamProvider).id;
}

String _$accountFutureHash() => r'6433662db8c2319c6a501725b608bbb472d02543';

/// See also [accountFuture].
@ProviderFor(accountFuture)
const accountFutureProvider = AccountFutureFamily();

/// See also [accountFuture].
class AccountFutureFamily extends Family<AsyncValue<Account?>> {
  /// See also [accountFuture].
  const AccountFutureFamily();

  /// See also [accountFuture].
  AccountFutureProvider call(
    String id,
  ) {
    return AccountFutureProvider(
      id,
    );
  }

  @override
  AccountFutureProvider getProviderOverride(
    covariant AccountFutureProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountFutureProvider';
}

/// See also [accountFuture].
class AccountFutureProvider extends AutoDisposeFutureProvider<Account?> {
  /// See also [accountFuture].
  AccountFutureProvider(
    String id,
  ) : this._internal(
          (ref) => accountFuture(
            ref as AccountFutureRef,
            id,
          ),
          from: accountFutureProvider,
          name: r'accountFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountFutureHash,
          dependencies: AccountFutureFamily._dependencies,
          allTransitiveDependencies:
              AccountFutureFamily._allTransitiveDependencies,
          id: id,
        );

  AccountFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Account?> Function(AccountFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountFutureProvider._internal(
        (ref) => create(ref as AccountFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Account?> createElement() {
    return _AccountFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountFutureProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountFutureRef on AutoDisposeFutureProviderRef<Account?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AccountFutureProviderElement
    extends AutoDisposeFutureProviderElement<Account?> with AccountFutureRef {
  _AccountFutureProviderElement(super.provider);

  @override
  String get id => (origin as AccountFutureProvider).id;
}

String _$accountsListSearchHash() =>
    r'a25c610c44547cf114dc2ead2627236ef0dd9369';

/// See also [accountsListSearch].
@ProviderFor(accountsListSearch)
const accountsListSearchProvider = AccountsListSearchFamily();

/// See also [accountsListSearch].
class AccountsListSearchFamily extends Family<AsyncValue<List<Account>>> {
  /// See also [accountsListSearch].
  const AccountsListSearchFamily();

  /// See also [accountsListSearch].
  AccountsListSearchProvider call(
    String query,
  ) {
    return AccountsListSearchProvider(
      query,
    );
  }

  @override
  AccountsListSearchProvider getProviderOverride(
    covariant AccountsListSearchProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountsListSearchProvider';
}

/// See also [accountsListSearch].
class AccountsListSearchProvider
    extends AutoDisposeFutureProvider<List<Account>> {
  /// See also [accountsListSearch].
  AccountsListSearchProvider(
    String query,
  ) : this._internal(
          (ref) => accountsListSearch(
            ref as AccountsListSearchRef,
            query,
          ),
          from: accountsListSearchProvider,
          name: r'accountsListSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountsListSearchHash,
          dependencies: AccountsListSearchFamily._dependencies,
          allTransitiveDependencies:
              AccountsListSearchFamily._allTransitiveDependencies,
          query: query,
        );

  AccountsListSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<Account>> Function(AccountsListSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountsListSearchProvider._internal(
        (ref) => create(ref as AccountsListSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Account>> createElement() {
    return _AccountsListSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountsListSearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountsListSearchRef on AutoDisposeFutureProviderRef<List<Account>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _AccountsListSearchProviderElement
    extends AutoDisposeFutureProviderElement<List<Account>>
    with AccountsListSearchRef {
  _AccountsListSearchProviderElement(super.provider);

  @override
  String get query => (origin as AccountsListSearchProvider).query;
}

String _$accountRepositoryHash() => r'2249709d67b76b52ff47ed676823eecbce048c9a';

/// See also [accountRepository].
@ProviderFor(accountRepository)
final accountRepositoryProvider = Provider<AccountRepository>.internal(
  accountRepository,
  name: r'accountRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$accountRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AccountRepositoryRef = ProviderRef<AccountRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

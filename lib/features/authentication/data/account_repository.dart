import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sp8/features/authentication/domain/account.dart';

part 'account_repository.g.dart';

class AccountRepository {
  const AccountRepository(this._firestore);
  final FirebaseFirestore _firestore;

  static String accountsPath() => 'accounts';
  static String accountPath(AccountID id) => '$accountsPath()/$id';

  Future<List<Account>> fetchAccountsList() async {
    final ref = _accountsRef();
    final snapshot = await ref.get();
    return snapshot.docs.map((docSnapshot) => docSnapshot.data()).toList();
  }

  Stream<List<Account>> watchAccountsList() {
    final ref = _accountsRef();
    return ref.snapshots().map((snapshot) => snapshot.docs.map((docSnapshot) => docSnapshot.data()).toList());
  }

  Future<Account?> fetchAccount(AccountID id) async {
    final ref = _accountRef(id);
    final snapshot = await ref.get();
    return snapshot.data();
  }

  Stream<Account?> watchAccount(AccountID id) {
    final ref = _accountRef(id);
    return ref.snapshots().map((snapshot) => snapshot.data());
  }

  Future<void> createAccount(AccountID id, String imageUrl) {
    return _firestore.doc(accountPath(id)).set(
      {
        'id': id,
        'imageUrl': imageUrl,
      },
      // use merge: true to keep old fields (if any)
      SetOptions(merge: true),
    );
  }

  Future<void> updateAccount(Account account) {
    final ref = _accountRef(account.accountID);
    return ref.set(account);
  }

  Future<void> deleteAccount(AccountID id) {
    return _firestore.doc(accountPath(id)).delete();
  }

  DocumentReference<Account> _accountRef(AccountID id) => _firestore.doc(accountPath(id)).withConverter(
        fromFirestore: (doc, _) => Account.fromJson(doc.data()!),
        toFirestore: (Account account, _) => account.toJson(),
      );

  Query<Account> _accountsRef() => _firestore
      .collection(accountsPath())
      .withConverter(
        fromFirestore: (doc, _) => Account.fromJson(doc.data()!),
        toFirestore: (Account account, _) => account.toJson(),
      )
      .orderBy('id');

  // * Temporary search implementation.
  // * Note: this is quite inefficient as it pulls the entire account list
  // * and then filters the data on the client
  // TODO: Update
  Future<List<Account>> searchAccounts(String query) async {
    // 1. Get all accounts from Firestore
    final accountsList = await fetchAccountsList();
    // 2. Perform client-side filtering
    return accountsList.where((account) => account.accountID.toLowerCase().contains(query.toLowerCase())).toList();
  }
}

@riverpod
Stream<List<Account>> accountsListStream(AccountsListStreamRef ref) {
  final accountsRepository = ref.watch(accountRepositoryProvider);
  return accountsRepository.watchAccountsList();
}

@riverpod
Future<List<Account>> accountsListFuture(AccountsListFutureRef ref) {
  final accountRepository = ref.watch(accountRepositoryProvider);
  return accountRepository.fetchAccountsList();
}

@riverpod
Stream<Account?> accountStream(AccountStreamRef ref, AccountID id) {
  final accountRepository = ref.watch(accountRepositoryProvider);
  return accountRepository.watchAccount(id);
}

@riverpod
Future<Account?> accountFuture(AccountFutureRef ref, AccountID id) {
  final accountsRepository = ref.watch(accountRepositoryProvider);
  return accountsRepository.fetchAccount(id);
}

@riverpod
Future<List<Account>> accountsListSearch(AccountsListSearchRef ref, String query) async {
  final link = ref.keepAlive();
  // a timer to be used by the callbacks below
  Timer? timer;
  // When the provider is destroyed, cancel the http request and the timer
  ref.onDispose(() {
    timer?.cancel();
  });
  // When the last listener is removed, start a timer to dispose the cached data
  ref.onCancel(() {
    // start a 30 second timer
    timer = Timer(const Duration(seconds: 30), () {
      // dispose on timeout
      link.close();
    });
  });
  // If the provider is listened again after it was paused, cancel the timer
  ref.onResume(() {
    timer?.cancel();
  });
  final accountsRepository = ref.watch(accountRepositoryProvider);
  return accountsRepository.searchAccounts(query);
}

@Riverpod(keepAlive: true)
AccountRepository accountRepository(AccountRepositoryRef ref) {
  return AccountRepository(FirebaseFirestore.instance);
}

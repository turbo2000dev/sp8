import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sp8/features/authentication/data/auth_repository.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_form_type.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }
  Future<bool> submit({required String email, required String password, required SignInFormType formType}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _authenticate(email, password, formType));
    return state.hasError == false;
  }

  Future<void> _authenticate(String email, String password, SignInFormType formType) {
    final authRepository = ref.read(authRepositoryProvider);
    switch (formType) {
      case SignInFormType.signIn:
        return authRepository.signInWithEmailAndPassword(email, password);
      case SignInFormType.register:
        return authRepository.createUserWithEmailAndPassword(email, password);
    }
  }

  Future<bool> sendReset({
    required String email,
  }) async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => authRepository.sendResetPasswordEmail(email));
    return state.hasError == false;
  }

  Future<void> signOut() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authRepository.signOut());
  }

  Future<bool> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();

    // we re-authenticate for two reasons:
    //   1- for security reasons, it is best to confirm that this is the real user performing this operation
    //   2- Firebase Authenticatiom may deny changing password if it has been too long since login
    state = await AsyncValue.guard(
        () => _authenticate(authRepository.currentUser!.email!, currentPassword, SignInFormType.signIn));
    if (state.hasError) {
      return false;
    }
    state = await AsyncValue.guard(() => authRepository.changePassword(currentPassword, newPassword));
    return true;
  }
}

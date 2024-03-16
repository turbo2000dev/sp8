import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:sp8/features/authentication/data/avatar_upload_repository.dart';

part 'change_avatart_screen_controller.g.dart';

@riverpod
class ChangeAvatarScreenController extends _$ChangeAvatarScreenController {
  @override
  FutureOr<void> build() {
    //no-op
  }

  Future<void> upload(String avatarUrl) async {
    try {
      state = const AsyncLoading();
      // final downloadUrl = await ref.read(avatarUploadRepositoryProvider).uploadProductImageFromAsset(avatarUrl);
      // TODO: save downloadUrl to Firestore
      state = const AsyncData(null);
      // TODO: on success, go back to the account page
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

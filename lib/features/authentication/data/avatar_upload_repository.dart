import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'avatar_upload_repository.g.dart';

/// Class for uploading images to Firebase Storage
class AvatarUploadRepository {
  AvatarUploadRepository(this._storage);
  final FirebaseStorage _storage;

  /// Upload an image asset to Firebase Storage and returns the download URL
  Future<String> uploadProductImageFromAsset(String assetPath) async {
    // load asset byte data from bundle
    final byteData = await rootBundle.load(assetPath);

    // Extract filename
    // Example name: assets/avatars/avatar-1.svg
    final components = assetPath.split('/');
    final filename = components[2];
    // upload to Firebase Storage
    final result = await _uploadAsset(byteData, filename);

    // return download URL
    return result.ref.getDownloadURL();
  }

  UploadTask _uploadAsset(ByteData byteData, String filename) {
    final bytes = byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
    final ref = _storage.ref('users/avatars/$filename');
    return ref.putData(
      bytes,
      SettableMetadata(contentType: 'image/svg'),
    );
  }

  /// Delete the product image from Firebase storage
  Future<void> deleteProductImage(String imageUrl) {
    return _storage.refFromURL(imageUrl).delete();
  }
}

@riverpod
AvatarUploadRepository avatarUploadRepository(AvatarUploadRepositoryRef ref) {
  return AvatarUploadRepository(FirebaseStorage.instance);
}

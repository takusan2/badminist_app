import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final secureStorageRepositoryProvider =
    Provider<SecureStorageRepository>((_) => SecureStorageDataSource());

class SecureStorageDataSource extends SecureStorageRepository {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  @override
  Future<void> deleteAll() async {
    try {
      await _storage.deleteAll();
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<String?> load(SecureStorageKey key) {
    try {
      return _storage.read(key: key.rawValue);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> save(SecureStorageKey key, String? value) {
    try {
      return _storage.write(key: key.rawValue, value: value);
    } on Exception catch (_) {
      rethrow;
    }
  }
}

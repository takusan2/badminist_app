import 'dart:async';

import 'package:badminist_app/services/secure_storage/secure_storage_key.dart';

abstract class SecureStorageRepository {
  Future<String?> load(SecureStorageKey key);
  Future<void> save(SecureStorageKey key, String? value);
  Future<void> deleteAll();
}

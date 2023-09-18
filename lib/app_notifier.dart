import 'dart:async';

import 'package:badminist_app/services/secure_storage/secure_storage_data_source.dart';
import 'package:badminist_app/services/secure_storage/secure_storage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appControllerProvider = Provider((ref) {
  return AppController(ref);
});

class AppController {
  AppController(this.ref);

  final Ref ref;

  SecureStorageRepository get secureStorageRepository =>
      ref.read(secureStorageRepositoryProvider);

  Future<void> resumed() async {}
}

enum SecureStorageKey { token, refreshToken }

extension SecureStorageKeyExtension on SecureStorageKey {
  String get rawValue {
    switch (this) {
      case SecureStorageKey.token:
        return SecureStorageKey.token.name;
      case SecureStorageKey.refreshToken:
        return SecureStorageKey.refreshToken.name;
    }
  }
}

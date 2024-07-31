import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const secureStorage = FlutterSecureStorage();

const _accessTokenName = 'accessToken';
const _refreshTokenName = 'refreshToken';
Future<void> saveAccessToken(String token) {
  return secureStorage.write(key: _accessTokenName, value: token);
}

Future<void> deleteAccessToken() {
  return secureStorage.delete(key: _accessTokenName);
}

Future<String?> getAccessToken() {
  return secureStorage.read(key: _accessTokenName);
}

Future<void> saveRefreshToken(String token) {
  return secureStorage.write(key: _refreshTokenName, value: token);
}

Future<void> deleteRefreshToken() {
  return secureStorage.delete(key: _refreshTokenName);
}

Future<String?> getRefreshToken() {
  return secureStorage.read(key: _refreshTokenName);
}
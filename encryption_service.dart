import 'package:encrypt/encrypt.dart';

class EncryptionService {
  final key = Key.fromLength(32);
  final iv = IV.fromLength(16);

  String encrypt(String text) {
    final e = Encrypter(AES(key));
    return e.encrypt(text, iv: iv).base64;
  }

  String decrypt(String text) {
    final e = Encrypter(AES(key));
    return e.decrypt64(text, iv: iv);
  }
}

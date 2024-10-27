import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> register(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.snackbar('Success', 'Registrasi berhasil');
      Get.offAllNamed('/todo'); // Navigasi ke halaman To-Do
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}

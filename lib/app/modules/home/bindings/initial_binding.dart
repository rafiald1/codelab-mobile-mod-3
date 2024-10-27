import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../controllers/book_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<BookController>(() => BookController());
  }
}

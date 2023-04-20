import 'package:get/get.dart';
import 'package:random_user/module/main_screen/main_screen_controller.dart';
import 'package:random_user/repository/user_repository.dart';

class MainScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> UserRepository());
    Get.put(MainScreenController(repository: Get.find()));
  }
}
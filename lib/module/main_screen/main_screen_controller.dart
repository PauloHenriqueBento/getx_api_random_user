import 'package:get/get.dart';
import 'package:random_user/model/user_model.dart';
import 'package:random_user/repository/user_repository.dart';

class MainScreenController extends GetxController {
  final UserRepository _repository;

  RxBool isLoading = false.obs;
  Rx<UserModel> user = Rx<UserModel>(
      UserModel('', null, null, null, null, null, null, null, null, null));

  MainScreenController({required UserRepository repository})
      : _repository = repository;

  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  Future<void> fetchUser() async {
    try {
      isLoading.value = true;
      UserModel newUser = await _repository.getUser();
      user.value = newUser;
    } catch (e) {
      print('ERROR ${e}');
    } finally {
      isLoading.value = false;
    }
  }

  void updateUser() {
    fetchUser();
    update();
  }
}

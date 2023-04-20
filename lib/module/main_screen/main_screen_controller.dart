import 'package:get/get.dart';
import 'package:random_user/model/user_model.dart';
import 'package:random_user/repository/user_repository.dart';

class MainScreenController extends GetxController with StateMixin {
  final UserRepository _repository;

  MainScreenController({required UserRepository repository})
      : _repository = repository;

  @override
  void onInit(){
    super.onInit();
    fetchUser();
  }

  Future<void> fetchUser() async{
    try{
      final UserModel user = await _repository.getUser();
      print(user);
    } catch (e){
      print('ERROR ${e}');
    }
  }
}
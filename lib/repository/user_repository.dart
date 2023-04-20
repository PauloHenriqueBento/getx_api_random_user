import 'dart:convert';

import 'package:get/get.dart';
import 'package:random_user/model/user_model.dart';

class UserRepository {
  final restClient = GetConnect();

  Future<UserModel> getUser() async {
    const url = "https://randomuser.me/api/";
    final results = await restClient.get(url);
    final data = json.encode(results.body['results'][0]);
    // print(results.body);
    if (results.status.hasError) {
      return Future.error(results.statusText!);
    } else {
      return UserModel.fromJson(data);
    }
  }
}

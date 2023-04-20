import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:random_user/application/modules/modules_routers.dart';
import 'package:random_user/module/main_screen/main_screen_bindings.dart';
import 'package:random_user/module/main_screen/main_screen_page.dart';

class MainScreenModule implements ModulesRouters {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const MainScreenPage(),
      binding: MainScreenBindings(),
    ),
  ];
}
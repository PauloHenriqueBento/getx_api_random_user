import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_user/module/main_screen/main_screen_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 16),
              titleMedium:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      getPages: [
        ...MainScreenModule().routers,
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

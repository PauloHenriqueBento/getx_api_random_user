import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:random_user/module/main_screen/main_screen_controller.dart';

class MainScreenPage extends GetView<MainScreenController> {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random User'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                        controller.user.value?.picture?.large ?? ''),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '${controller.user.value.name?.title ?? ''} ${controller.user.value.name?.first ?? ''} ${controller.user.value.name?.last ?? ''}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(
                              width: 10,
                            ),
                            Text(controller.user.value.email ?? ''),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(
                              width: 10,
                            ),
                            Text(controller.user.value?.dob?.date != null
                                ? DateFormat('dd/MM/yyyy').format(
                                    DateTime.parse(
                                        controller.user.value!.dob!.date!))
                                : ''),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.home),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                  '${controller.user.value?.location?.street?.name ?? ''}, ${controller.user.value?.location?.street?.number ?? ''} - ${controller.user.value?.location?.city ?? ''}'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.explore),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                                '${controller.user.value?.location?.state ?? ''} - ${controller.user.value?.location?.country ?? ''}')
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                                controller.user.value?.phone?.toString() ?? ''),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: controller.updateUser,
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}

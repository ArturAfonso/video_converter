import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:video_converter/app/data/shared/themes/themes.dart';
import 'package:video_converter/app/modules/home/controllers/home_controller.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init('storage');
  Get.put(HomeController());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: getTheme(),
    ),
  );
}

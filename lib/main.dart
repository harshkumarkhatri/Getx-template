// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_initial_setup/const.dart';
import 'package:getx_initial_setup/core/widgets/tree.dart';
import 'package:getx_initial_setup/modules/dashboard/presentation/binding/dashboard_binding.dart';
import 'package:getx_initial_setup/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    final mediaQueryData = MediaQuery.of(context);
    return MediaQuery(
      data: mediaQueryData.copyWith(textScaleFactor: 1),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Getx Initial Setup',
        themeMode: ThemeMode.light,
        theme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(bg1),
            ),
            primaryColor: MaterialColor(
              primaryColorCode,
              <int, Color>{
                50: const Color(primaryColorCode).withOpacity(0.1),
                100: const Color(primaryColorCode).withOpacity(0.2),
                200: const Color(primaryColorCode).withOpacity(0.3),
                300: const Color(primaryColorCode).withOpacity(0.4),
                400: const Color(primaryColorCode).withOpacity(0.5),
                500: const Color(primaryColorCode).withOpacity(0.6),
                600: const Color(primaryColorCode).withOpacity(0.7),
                700: const Color(primaryColorCode).withOpacity(0.8),
                800: const Color(primaryColorCode).withOpacity(0.9),
                900: const Color(primaryColorCode).withOpacity(1.0),
              },
            ),
            scaffoldBackgroundColor: const Color(0xFFf3f3f3),
            brightness: Brightness.dark),
        home: const TreeViewLocal(),
        initialBinding: DashboardBinding(),
        getPages: AppPages.pages,
      ),
    );
  }
}


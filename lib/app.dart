import 'package:coolvashop/routes/app_pages.dart';
import 'package:coolvashop/routes/app_routes.dart';
import 'package:coolvashop/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppPages.pages,
    );
  }
}

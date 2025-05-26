import 'package:coolvashop/features/authentication/bindings/login_binding.dart';
import 'package:coolvashop/features/authentication/bindings/onboarding_binding.dart';
import 'package:coolvashop/features/authentication/screens/login/login_screen.dart';
import 'package:coolvashop/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:coolvashop/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.ONBOARDING,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}

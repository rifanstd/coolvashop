import 'package:coolvashop/common/styles/spacing_styles.dart';
import 'package:coolvashop/features/authentication/controllers/login_controller.dart';
import 'package:coolvashop/utils/constants/colors.dart';
import 'package:coolvashop/utils/constants/image_strings.dart';
import 'package:coolvashop/utils/constants/sizes.dart';
import 'package:coolvashop/utils/constants/text_strings.dart';
import 'package:coolvashop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyles.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(isDarkMode: isDarkMode),
            _SignInForm(controller: controller),
            _OrSignInDivider(isDarkMode: isDarkMode),
            const SizedBox(height: TSizes.spaceBtwSections),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: TColors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(TImages.google),
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                    ),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: TColors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(TImages.facebook),
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OrSignInDivider extends StatelessWidget {
  const _OrSignInDivider({
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDarkMode ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          TTexts.orSignInWith.capitalize ?? "",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDarkMode ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm({
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.sm),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            isDarkMode ? TImages.lightAppLogo : TImages.darkAppLogo,
          ),
          height: 150,
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

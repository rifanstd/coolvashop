import 'package:coolvashop/common/styles/spacing_styles.dart';
import 'package:coolvashop/utils/constants/image_strings.dart';
import 'package:coolvashop/utils/constants/text_strings.dart';
import 'package:coolvashop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
            TSpacingStyles.smSpace,
            Text(
              TTexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

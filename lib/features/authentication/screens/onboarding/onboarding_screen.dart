import 'package:coolvashop/features/authentication/controllers/onboarding_controller.dart';
import 'package:coolvashop/utils/constants/colors.dart';
import 'package:coolvashop/utils/constants/image_strings.dart';
import 'package:coolvashop/utils/constants/sizes.dart';
import 'package:coolvashop/utils/constants/text_strings.dart';
import 'package:coolvashop/utils/device/device_utility.dart';
import 'package:coolvashop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Onboarding Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            children: const [
              _ScrollablePage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              _ScrollablePage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              _ScrollablePage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const _SkipButton(),

          // Indicator
          const _Indicator(),

          // Next Button
          const _NextButton(),
        ],
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.primary
              : Colors.black,
          side: BorderSide.none,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.indicatorNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          activeDotColor: THelperFunctions.isDarkMode(context)
              ? TColors.light
              : TColors.dark,
        ),
      ),
    );
  }
}

class _SkipButton extends StatelessWidget {
  const _SkipButton();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}

class _ScrollablePage extends StatelessWidget {
  const _ScrollablePage({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

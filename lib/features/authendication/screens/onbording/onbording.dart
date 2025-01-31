import 'package:e_commerce/features/authendication/controllers/onbording/onbording_controller.dart';
import 'package:e_commerce/features/authendication/screens/widgets/onbording_next_button.dart';
import 'package:e_commerce/features/authendication/screens/widgets/onbording_page.dart';
import 'package:e_commerce/features/authendication/screens/widgets/onbording_skip.dart';

import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../widgets/onbording _dot_navigation.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBordingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.ubdatePageIndicator,
            children: [
              OnBordingPage(
                image: TImages.OnBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBordingPage(
                image: TImages.OnBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBordingPage(
                image: TImages.OnBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip Button
          const OnBordingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBordingDotNavigation(),

          /// Circular Button
          OnBordingNextButton(),
        ],
      ),
    );
  }
}

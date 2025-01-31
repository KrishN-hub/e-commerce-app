import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBordingController extends GetxController {
  static OnBordingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Ubadate Current Index when Page Scroll
  void ubdatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump ti the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Ubdate Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Ubdate Current Index & jump to next page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}

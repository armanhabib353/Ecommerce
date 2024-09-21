import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Todo: Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Todo: Update Current Index When Page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Todo:Jump to The specific dot selected page.
  void dotNaviationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Todo: Update current Index & Jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Todo: Update current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}

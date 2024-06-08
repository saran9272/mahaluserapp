import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/terms_conditions_screen.dart';
import '../model/build_page_model.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(bottom: 70),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            buildPage(
                color: Colors.blue,
                assetImages: 'assets/images/1st_page.png',
                title: 'Online Booking',
                subtitle: 'A useful platform for booking mahals via online'),
            buildPage(
                color: Colors.blue,
                assetImages: 'assets/images/2nd_page.png',
                title: 'Large number of mahals',
                subtitle:
                    'A perfect platform to get your favourite mahal'),
            buildPage(
                color: Colors.blue,
                assetImages: 'assets/images/3rd_page.png',
                title: 'Get your Booking',
                subtitle: 'You can reserve your hall real quick from home')
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  backgroundColor: blue,
                  minimumSize: const Size.fromHeight(70)),
              onPressed: () async {
                Get.to(const TermsConditionsScreen());
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          : Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text(
                        'SKIP',
                        style: TextStyle(fontSize: 15, color: blue),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 16,
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: Colors.black26,
                        activeDotColor: blue,
                      ),
                      onDotClicked: (index) {
                        controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text(
                        'NEXT',
                        style: TextStyle(fontSize: 15, color: blue),
                      ))
                ],
              ),
            ),
    );
  }
}

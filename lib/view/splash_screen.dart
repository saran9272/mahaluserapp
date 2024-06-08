import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/view/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoardingScreen();
  }

  navigateToOnBoardingScreen() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offAll(const OnBoardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: SizedBox(
            height: 300,width: Get.width,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Image.asset(
                'assets/images/logo1.png',fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

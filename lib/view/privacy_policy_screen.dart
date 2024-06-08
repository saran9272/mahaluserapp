import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/view/terms_conditions_screen.dart';

import '../constant/colors.dart';
import 'login_screen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text(
          'Privacy policy',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [buildContent(),
            const SizedBox(height: 550,),
            buildButtons()],
        ),
      ),
    );
  }

  buildContent() {
    return const Column(
      children: [
        Text(
          'DUM DUM is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application and website.',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: blue,
            ),
            onPressed: () {
              Get.to(const TermsConditionsScreen());
            },
            child: const Text(
              'Decline',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: blue,
            ),
            onPressed: () {
              Get.to(const LoginScreen());
            },
            child: const Text(
              'Accept',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ],
    );
  }
}

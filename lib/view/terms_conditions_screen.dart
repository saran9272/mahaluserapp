import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/onboarding_screen.dart';
import 'package:v_mahal_user_app/view/privacy_policy_screen.dart';


class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            buildContent(),
            const SizedBox(height: 500,),
            Column(
              children: [
                buildButtons()
              ],
            )

          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: true,
      title: const Text('Terms & Conditions',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    );
  }

  buildContent(){
    return const Column(
      children: [
        Text('The services provided by IWP shall be in accordance with the published list of services as above based on the discussions between the "client" and "the Event Manager” till date,Any additions to the above shall be charged extra based on the cost involved.',style: TextStyle(fontSize: 15),),
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
              Get.to(const OnBoardingScreen());
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
              Get.to(const PrivacyPolicyScreen());
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


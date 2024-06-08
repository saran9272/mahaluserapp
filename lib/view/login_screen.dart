import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/forgot_password_screen.dart';
import 'package:v_mahal_user_app/view/location_access_screen.dart';
import 'package:v_mahal_user_app/view/main_screen.dart';
import 'package:v_mahal_user_app/view/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            buildImage(),
            buildContent(),
            const SizedBox(
              height: 10,
            ),
            buildField(),
            const SizedBox(
              height: 10,
            ),
            buildButton()
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Container(
      height: 400,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // image: const DecorationImage(
          //     image: AssetImage('assets/images/logo.png'))
    ),
      child: const Padding(
        padding: EdgeInsets.all(50),
        child: Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill),
      ),
    );
  }

  buildContent() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LOGIN',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: blue),
        ),
        Text('Please sign in to continue',style: TextStyle(fontSize: 17,color: Colors.red),),
      ],
    );
  }

  buildField(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
              cursorColor: blue,
              decoration:  InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                    borderSide:
                    const BorderSide(color: Colors.black, width: 1)),
                labelText: 'Email',
                labelStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
                // hintText: 'Enter your Email',
              ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: blue,
            decoration:  InputDecoration(
              // filled: true,
              // fillColor: Colors.white.withOpacity(0.6),
              contentPadding: const EdgeInsets.all(10),
              border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                  borderSide:
                  const BorderSide(color: Colors.black, width: 1)),
              labelText: 'Password',
              labelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
              // hintText: 'Enter your Password',
            ),
          ),
        ],
      ),
    );
  }

  buildButton(){
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(150, 50),
              backgroundColor: gold,),
            onPressed: (){
              Get.to(const LocationAccessScreen());
            }, child:const Text('LOGIN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
        TextButton(
            onPressed: (){
              Get.to(const ForgotPasswordScreen());
            }, child:const Text('Forgot Password',style: TextStyle(fontSize: 15,color: blue),)),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?',style: TextStyle(fontSize: 15,color: Colors.black),),
            TextButton(
                onPressed: (){
                  Get.to(const RegisterScreen());
                }, child:const Text('Sign Up',style: TextStyle(fontSize: 15,color: blue),)),
          ],
        )
      ],
    );
  }

}

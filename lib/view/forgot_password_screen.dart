import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/login_screen.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildImage(),
            const SizedBox(height: 10,),
            buildContent(),
            const SizedBox(height: 20,),
            buildField(),
            const SizedBox(height: 20,),
            buildButton()
          ],
        ),
      ),
    );
  }


  buildImage(){
    return Container(
      height: 350,width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // image: const DecorationImage(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill)
      ),
      child: const Padding(
        padding: EdgeInsets.all(50),
        child: Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill),
      )
    );
  }

  buildContent(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FORGOT PASSWORD',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: blue),),
        Text('Change your password',style: TextStyle(fontSize: 17,color: Colors.red),),
      ],
    );
  }

  buildField(){
    return Column(
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
            labelText: 'Old Password',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter your first name',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
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
            labelText: 'New Password',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter your first name',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          cursorColor: Colors.white,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                const BorderSide(color: Colors.black, width: 1)),
            labelText: 'Confirm Password',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            // hintText: 'Enter your first name',
          ),
        ),
      ],
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
              Get.to(const LoginScreen());
            }, child:const Text('Update',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

}

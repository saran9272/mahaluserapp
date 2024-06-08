import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/main_screen.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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

  buildImage(){
    return Container(
      height: 350,width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // image: const DecorationImage(image: AssetImage('assets/images/logo.png'))
      ),
      child: const Padding(
        padding: EdgeInsets.all(50),
        child: Image(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fill),
      ),
    );
  }
  
  buildContent(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('REGISTER',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: blue),),
        Text('Please sign in to continue',style: TextStyle(fontSize: 17,color: Colors.red),),
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
            labelText: 'First Name',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            hintText: 'Enter your first name',
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
            labelText: 'Last Name',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            hintText: 'Enter your last name',
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
            labelText: 'Email',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            hintText: 'Enter your email',
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
            labelText: 'Mobile Number',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            hintText: 'Enter your mobile number',
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
            labelText: 'Password',
            labelStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.black),
            hintText: 'Enter your Password',
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
              Get.to(const MainScreen());
            }, child:const Text('Register',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }


}

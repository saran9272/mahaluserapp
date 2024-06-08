import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:v_mahal_user_app/view/main_screen_tabs/edit_profile_screen.dart';
import 'package:v_mahal_user_app/view/privacy_policy_screen.dart';
import 'package:v_mahal_user_app/view/terms_conditions_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildContainer(),
            const SizedBox(height: 10,),
            buildList1(),
            const SizedBox(height: 10,),
            buildList2()
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text('Profile',style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold,color: Colors.black),),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  buildContainer(){
    return Column(
      children: [
        Container(
          height: 120,width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            image: const DecorationImage(image: NetworkImage('https://phantom-marca.unidadeditorial.es/9279e8039b9040209f07a16f0201dd63/resize/828/f/jpg/assets/multimedia/imagenes/2023/01/12/16735402991293.jpg'),fit: BoxFit.cover)
          ),
        ),
        TextButton(onPressed: (){
          Get.to(const EditProfileScreen());
        }, child: const Text('Edit Profile',style: TextStyle(fontSize: 15,color: Colors.red),))
      ],
    );
  }

  buildList1(){
    return Container(
      height: 350,width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black),
      ),
      child: const Column(
        children: [
          ListTile(
            title: Text('Account name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Text('Victor',style: TextStyle(fontSize: 15,color: Colors.red),),
          ),
          ListTile(
            title: Text('Location',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Text('Coimbatore',style: TextStyle(fontSize: 15,color: Colors.red),)
          ),
          ListTile(
              title: Text('State',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Text('Tamilnadu',style: TextStyle(fontSize: 15,color: Colors.red),)
          ),
          ListTile(
            title: Text('Your Identitiy',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Text('Male',style: TextStyle(fontSize: 15,color: Colors.red),),
          ),
          ListTile(
            title: Text('Marital status',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Text('Unmarried',style: TextStyle(fontSize: 15,color: Colors.red),),
          ),
          ListTile(
            title: Text('Your Orders',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.red,),
          ),
        ],
      ),
    );
  }

  buildList2(){
    return Container(
      height: 250,width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Privacy & Security',style: TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.to(const TermsConditionsScreen());
              },
              child: const Column(
                children: [
                  Text('Terms & Conditions',style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            GestureDetector(
                onTap: (){
                  Get.to(const PrivacyPolicyScreen());
                },
                child: const Text('Privacy policy',style: TextStyle(fontSize: 15),)),
            const SizedBox(height: 10,),
            const Text('Customer care',style: TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),
            const Text('Help Center',style: TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),
            const Text('About us',style: TextStyle(fontSize: 15),),
            const SizedBox(height: 10,),
            const Text('Join Our Team',style: TextStyle(fontSize: 15),),
          ],
        ),
      ),
    );
  }

}

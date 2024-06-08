import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_mahal_user_app/view/main_screen_tabs/events_screen.dart';
import 'package:v_mahal_user_app/view/main_screen_tabs/home_screen.dart';
import 'package:v_mahal_user_app/view/main_screen_tabs/wishlist_screen.dart';

import 'main_screen_tabs/profile_screen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined), label: 'Home',selectedIcon: Icon(Icons.home_outlined,color: Colors.red,),),
              NavigationDestination(icon: Icon(Icons.event), label: 'Category',selectedIcon: Icon(Icons.event,color: Colors.red,),),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border), label: 'Wishlist',selectedIcon: Icon(Icons.favorite_border,color: Colors.red,),),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile',selectedIcon: Icon(Icons.person,color: Colors.red,),),
            ]),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}


  class NavigationController extends GetxController{
    final Rx<int> selectedIndex = 0.obs;

    final screens= [
      const HomeScreen(),
      const EventsScreen(),
       const WishListScreen(),
      const ProfileScreen()
    ];
  }



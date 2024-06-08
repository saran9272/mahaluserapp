import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';
import 'main_screen.dart';


class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({Key? key}) : super(key: key);

  @override
  State<LocationAccessScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationAccessScreen> {

  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location service disabled.');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission == await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever){
      return Future.error(
      'Location permissions are permanently denied,we cannot request permission');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 150,),
              buildCircle(),
              const SizedBox(height: 50,),
              buildText(),
              const SizedBox(height: 100,),
              buildButton()
            ],
          ),
        ),
      ),
    );
  }

  buildCircle(){
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: Colors.grey,
          child: Icon(Icons.location_on,size: 70,color: blue,),
        )
      ],
    );
  }

  buildText(){
    return const Column(
      children: [
        Text('Enable location',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        SizedBox(height: 20,),
        Text('You\'ll need to enable your location',style: TextStyle(fontSize: 17,color: Colors.red),)
      ],
    );
  }

  buildButton(){
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fixedSize: const Size(300, 50),
          backgroundColor: blue,),
        onPressed: (){
          getCurrentLocation();
          Get.to(const MainScreen());
        }, child:const Text('ALLOW LOCATION',style: TextStyle(fontSize: 17,color: Colors.white),));
  }
}

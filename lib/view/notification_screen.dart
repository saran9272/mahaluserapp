import 'package:flutter/material.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: true,
      title: const Text('Notifications',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    );
  }
}

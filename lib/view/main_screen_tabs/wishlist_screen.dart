import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildButtons(),
              buildContainer(),
            ],
          ),
        ]),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      title: const Text(
        'WishList',
        style:
            TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(
                Icons.edit,
                color: Colors.white70,
                size: 25,
              ),
            ],
          ),
        )
      ],
    );
  }

  buildButtons() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              label: const Text(
                'Liked',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.red),
              )),
          const SizedBox(
            width: 10,
          ),
          const Chip(
              side: BorderSide(color: Colors.blue),
              label: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          const Chip(
              side: BorderSide(color: Colors.blue),
              label: Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Mini Hall',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              )),
        ],
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 150,width: Get.width,
      decoration: BoxDecoration(color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 2)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://img.weddingbazaar.com/shaadisaga_production/photos/pictures/006/306/778/new_medium/ss20230327-31865-1etug83.jpg?1679906098'),
                      fit: BoxFit.fill)),
            ),
            const SizedBox(width: 10,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Viswa Hall',style: TextStyle(fontSize: 15),),
                Text('Mini Hall',style: TextStyle(fontSize: 15),),
                Text('250 people capacity',style: TextStyle(fontSize: 15),),
                Text('Rs.5000/ per day',style: TextStyle(fontSize: 15),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

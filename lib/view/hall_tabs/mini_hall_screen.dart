import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:v_mahal_user_app/view/hall_tabs/hall_screen.dart';

import '../../constant/colors.dart';


class MiniHallScreen extends StatelessWidget {
  const MiniHallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            buildList(),
            const SizedBox(height: 10,),
            buildList1(),
            const SizedBox(height: 10,),
            buildList2(),
            const SizedBox(height: 10,),
            buildList3(),
            const SizedBox(height: 10,),
            buildList4(),
            const SizedBox(height: 10,),
            buildList5(),
            const SizedBox(height: 10,),
            buildList6(),
            const SizedBox(height: 10,),
            buildList7(),
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      elevation: 0,
      title: const Text('Mini Hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    );
  }

  buildList(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    image: DecorationImage(image: NetworkImage('https://img.weddingbazaar.com/shaadisaga_production/photos/pictures/006/306/778/new_medium/ss20230327-31865-1etug83.jpg?1679906098'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('RTR mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('KNG Pudur,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.8',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(254 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList1(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipPJ1fT_QbdKrKUZV7PkRoDywsVIRo3cCcBF8Mow=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Guru Krishna mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Gandhipuram,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.7',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(204 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList2(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipNqomoMEx5XRhE1OQ7hSD_aA507V6X_sQCOKDWq=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ps mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Ram Nagar,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.5',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(155 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList3(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipO3FRVGjxk9W9tUkthdzlZ3ugykYfUkRGATwjfg=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sri Poorna mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Kurudampalayam,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.8',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(321 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList4(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipM2G0pirrqgYkuq57aqhrrjsxM3LRatDLgyGaSu=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vishaka mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Peelamedu,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.2',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(88 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList5(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipPKtlwULpOLsYA8Etc5Tqfs1JCX36RZv0KaI7sf=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('JJ mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Sivanandha Colony,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.8',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(254 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList6(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipO-afnu8TJWiPa73W1vx6mJ1Jhn7LAKctSSWYYb=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SS mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('SS Kulam,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.5',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(441 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }

  buildList7(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to( HallScreen());
          },
          child: Container(
            height: 240,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 2)]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipNd4AiXlqMybYdtptav5sPBYeEUTtZ6QWFlHETf=s1360-w1360-h1020'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mayura mini hall',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('NGGO Colony,Coimbatore',style: TextStyle(fontSize: 15),),
                      Row(
                        children: [
                          Icon(Icons.star,size: 20,color: gold,),
                          Text('4.9',style: TextStyle(fontSize: 15,color: gold),),
                          SizedBox(width: 5,),
                          Text('(899 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }


}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant/colors.dart';

class HallScreen extends StatefulWidget {
  HallScreen({super.key});

  @override
  State<HallScreen> createState() => _HallScreenState();
}

class _HallScreenState extends State<HallScreen> {
  bool isPressed = false;

  int activeIndex = 0;

  final controller = CarouselController();

  final images = [
    'https://image.wedmegood.com/resized/800X/uploads/member/204794/1507922008_87647629.jpg',
    'https://media-cdn.tripadvisor.com/media/photo-s/1c/a1/96/e6/marriage-hall-stage-decoration.jpg',
    'https://cdn0.weddingwire.in/vendor/4573/3_2/960/jpg/kalyana-mandapams-g-k-chitra-mahal-marriage-hall-1_15_394573-164416382552837.jpeg'
  ];

  final images1 = [
    'https://lh3.googleusercontent.com/p/AF1QipNpadF8Qrl9n36PgPnPqq0I4etrnIN2-85G41uD=s1360-w1360-h1020',
    'https://lh3.googleusercontent.com/p/AF1QipPJ1fT_QbdKrKUZV7PkRoDywsVIRo3cCcBF8Mow=s1360-w1360-h1020',
    'https://lh3.googleusercontent.com/p/AF1QipNRcK9BDbHbgqhI0MP3kFJk5zv37IVAY5BY3mK4=s1360-w1360-h1020',
    'https://lh5.googleusercontent.com/p/AF1QipOK9_Nb8Vhx-fklib5PFTaOKG4PrvtAF9t3bFOm=w141-h176-n-k-no-nu',
    'https://lh5.googleusercontent.com/p/AF1QipO-afnu8TJWiPa73W1vx6mJ1Jhn7LAKctSSWYYb=w260-h175-n-k-no',
    'https://lh3.googleusercontent.com/p/AF1QipM2G0pirrqgYkuq57aqhrrjsxM3LRatDLgyGaSu=s1360-w1360-h1020',
    'https://lh3.googleusercontent.com/p/AF1QipOWtOxxwQPVQl9F6c-r_SXvB5sPx275ZAWal5Xw=s1360-w1360-h1020',
    'https://lh5.googleusercontent.com/p/AF1QipMsNV9EtsfQ9HG6jmHgCBLVTmdnPHZ43NFI9g7R=w260-h175-n-k-no'
  ];

  final title = [
    'Lotus mini hall',
    'Guru krishna mini hall',
    'PSM mini hall',
    'Sri poorna mini hall',
    'SS mini hall',
    'Vishaka mini hall',
    'JJ mini hall',
    'Mayura mini hall'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCarouselSlider(),
            buildDetails(),
            const SizedBox(
              height: 10,
            ),
            buildDescription(),
            const SizedBox(
              height: 10,
            ),
            buildInfo(),
            const SizedBox(
              height: 10,
            ),
            buildButtons(),
            const SizedBox(
              height: 10,
            ),
            buildReviews(),
            const SizedBox(
              height: 10,
            ),
            buildList(),
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
    );
  }

  buildCarouselSlider() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              height: 250,
              // initialPage: 0,
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: false,
              // enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: images.length,
            itemBuilder: (context, index, realindex) {
              final urlimages = images[index];
              return buildImage(urlimages, index);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          buildIndicator(),
        ],
      ),
    );
  }

  buildImage(String urlImages, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: Image.network(urlImages).image, fit: BoxFit.cover),
      ),
    );
  }

  void animateToSlide(int index) => controller.animateToPage(index);

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      onDotClicked: animateToSlide,
      effect: const ScrollingDotsEffect(
          fixedCenter: true,
          dotWidth: 5,
          dotHeight: 5,
          activeDotColor: Colors.red,
          dotColor: skyBlue),
    );
  }

  buildDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: skyBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    'Preferred vendor',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Text(
              '\$2,50,000',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'RTR Mini Mahal',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const Text(' main road, KNG Pudur, Coimbatore, Tamil Nadu 641108'),
        const Text(
          '9876543210',
          style: TextStyle(fontSize: 15),
        ),
        const Row(
          children: [
            Icon(
              Icons.star,
              size: 20,
              color: gold,
            ),
            Text(
              '4.8',
              style: TextStyle(fontSize: 15, color: gold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '(254 Reviews)',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }

  buildDescription() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 180,
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 2)]),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About the venue:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'RTR Mini Hall is an air conditioned hall with a seating capacity of 100 and floating capacity of 125. The Dining capacity of Manchester Inn is 35. The Function hall is in Tenth floor. Lift access is available to reach the function hall easily. Parking facility is available for 15 cars and 75 bikes.',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildInfo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Venue Info',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.red),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('No.of seats',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  Text('100 seats',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Air Conditioned',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
                  Text('Yes',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cuisines Allowed',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  Text('Veg & Non Veg',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Outside decoration',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  Text('Not allowed',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rooms available',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  Text(' 3 Guest Rooms/with Ac',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Parking Space',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),
                  Text(' Avialable',style: TextStyle(
                      color: blue,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ))
                ],),
            ],
          ),
        ),
      ],
    );
  }


  buildButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: skyBlue, fixedSize: const Size(150, 40)),
          onPressed: () {
          },
          child: const Text(
            'View Contact',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:  Colors.white),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              backgroundColor: skyBlue, fixedSize: const Size(170, 40)),
          onPressed: () {
          },
          child: const Text(
            'Check Availability',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:  Colors.white),
          ),
        ),
      ],
    );
  }

  buildReviews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Reviews:',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg'),
                      fit: BoxFit.fill)),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"Excellent wedding location in coimbatore"',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg'),
                      fit: BoxFit.fill)),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"Excellent wedding location in coimbatore"',
                  style: TextStyle(fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: gold,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  buildList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Browse Similar venues',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images1.length,
                itemBuilder: (context, index) {
                  return buildCard(index);
                }),
          ),
        ),
      ],
    );
  }

  buildCard(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(images1[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5)
                ]),
          ),
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: Text(
            title[index],
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}

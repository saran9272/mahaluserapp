import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constant/colors.dart';


class VenueScreen extends StatefulWidget {
   VenueScreen({super.key});

  @override
  State<VenueScreen> createState() => _VenueScreenState();
}

class _VenueScreenState extends State<VenueScreen> {

  bool isPressed = false;
  int activeIndex = 0;
  final controller = CarouselController();

  final images = [
    'https://media.weddingz.in/images/9697217eed0578968b8cdc61487c0f2f/best-marriage-halls-in-chennai-to-host-your-auspicious-large-scale-wedding.jpg',
    'https://5.imimg.com/data5/WX/YF/GLADMIN-55973599/wedding-hall.png',
    'https://cdn0.weddingwire.in/vendor/4573/3_2/960/jpg/kalyana-mandapams-g-k-chitra-mahal-marriage-hall-1_15_394573-164416382552837.jpeg'
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildLocation(),
            buildChip(),
            buildCarouselSlider(),
            buildDetails()
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      title: const Text('Venues',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      elevation: 0,
    );
  }

  buildLocation(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,width: Get.width,
        color: Colors.transparent,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.red,size: 20,),
                SizedBox(height: 10,),
                Text('Coimbatore',style: TextStyle(fontSize: 17),),
              ],
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  buildChip(){
    return const Row(
      children: [
        Chip(
            side: BorderSide(color: Colors.blue),
            label: Row(
              children: [
                Text(
                  'Check Availability',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                Icon(Icons.keyboard_arrow_down_sharp,),
              ],
            )),
        SizedBox(width: 10,),
        Chip(
            side: BorderSide(color: Colors.blue),
            label: Text(
              'no. of Guests',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )),
      ],
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
              enlargeCenterPage: true,
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
  
  buildDetails(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,width: 150,
              decoration: BoxDecoration(
                color: skyBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.white,size: 20,),
                  Text('Preferred vendor',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
            ),
            const Text('\$2,50,000',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),)
          ],
        ),
        const SizedBox(height: 10,),
        const Text('RTR Kalyana Mahal',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        const Text('Gandhipuram, Coimbatore'),
        const Row(
          children: [
            Icon(Icons.star,size: 20,color: gold,),
            Text('4.8',style: TextStyle(fontSize: 15,color: gold),),
            SizedBox(width: 5,),
            Text('(254 Reviews)',style: TextStyle(fontSize: 15,color: Colors.grey),)
          ],
        )
      ],
    );
  }
  
}

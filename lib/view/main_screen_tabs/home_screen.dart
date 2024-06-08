import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:v_mahal_user_app/constant/colors.dart';
import 'package:v_mahal_user_app/view/hall_tabs/mini_hall_screen.dart';
import 'package:v_mahal_user_app/view/notification_screen.dart';
import 'package:v_mahal_user_app/view/search_screen.dart';
import 'package:v_mahal_user_app/view/venue_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCarouselSlider(),
            buildHall(),
            const SizedBox(
              height: 10,
            ),
            buildContainer(),
            const SizedBox(
              height: 10,
            ),
            buildEvents()
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
        title:
        TextButton(onPressed: (){}, child:const Text(
          'Coimbatore',
          style: TextStyle(
              fontSize: 15, color: blue, fontWeight: FontWeight.bold),
        ),
        ),
        actions:  [
          IconButton(onPressed: (){
            Get.to( SearchScreen());
          }, icon: const Icon(
            Icons.search,
            size: 25,
            color: Colors.black,
          ),),
          IconButton(onPressed: (){
            Get.to(const NotificationScreen());
          }, icon: const Icon(
            Icons.notifications,
            size: 25,
            color: Colors.black,
          ),)
        ]);
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

  buildHall() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Get.to(const MiniHallScreen());
          },
          child: Column(
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
              const Text(
                'Mini Hall',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://media.weddingz.in/images/ba9ddb84a95da93530707cfa62621125/jenneys-residency-peelamedu-coimbatore.jpg'),
                      fit: BoxFit.fill)),
            ),
            const Text(
              'Hall',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn0.weddingwire.in/vendor/6369/3_2/640/jpg/ac-hall_15_146369.jpeg'),
                      fit: BoxFit.fill)),
            ),
            const Text(
              'Premium Hall',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )
          ],
        ),
      ],
    );
  }

  buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 60,
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 5)]),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HAPPY WEDDING',
              style: TextStyle(
                  fontSize: 20, color: Colors.pink, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }

  buildEvents() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Events',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn.colorexpertsbd.com/wp-content/uploads/2019/12/Event-Photography-hand-note.png'),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  'Photographers',
                  style: TextStyle(fontSize: 15, color: blue),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbUpe_5niYSnLqfvQf3g9sw-IqTUIYOvT9GH6LSYG1DfOQ5KhRj-1OKKh5p0YxJgOr0HA&usqp=CAU'),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  'Decorators',
                  style: TextStyle(fontSize: 15, color: blue),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://content3.jdmagicbox.com/comp/coimbatore/f7/0422px422.x422.111221140231.g4f7/catalogue/nishrin-mehendi-designer-peelamedu-coimbatore-mehendi-artists-at-home-nfryuzg9r6.jpg'),
                          fit: BoxFit.cover
                      )),
                ),
                const Text(
                  'Mehandi Artist',
                  style: TextStyle(fontSize: 15, color: blue),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

}



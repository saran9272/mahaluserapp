import 'package:flutter/material.dart';

import '../../constant/colors.dart';


class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildEvents()
          ],
        ),
      )
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Category',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }

  buildEvents() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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

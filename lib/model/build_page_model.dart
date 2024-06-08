import 'package:flutter/material.dart';

Widget buildPage ({
  required Color color,
  required String assetImages,
  required String title,
  required String subtitle,
})=>
    Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(assetImages,fit: BoxFit.fill,
          width: double.infinity,
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
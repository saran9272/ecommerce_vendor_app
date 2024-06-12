import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';

class NotifyDetailScreen extends StatelessWidget {
  const NotifyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [lightGreen, green, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Scaffold(
          appBar: buildAppBar(),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                buildImage(),
                const SizedBox(
                  height: 10,
                ),
                buildDetails(),
                const SizedBox(
                  height: 10,
                ),
                buildOrder()
              ],
            ),
          ),
        ));
  }

  buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      automaticallyImplyLeading: true,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text(
        'Product Details',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildImage() {
    return Container(
      height: 300,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://files.organicharvest.in/site-images/original/1-1ah_1.jpg'),
              fit: BoxFit.fill)),
    );
  }

  buildDetails() {
    return Column(
      children: [
        Container(
          height: 100,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Product name: ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Organic Shampoo',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Product Description: ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Chemical free organic shampoo',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Quantity: ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: '1(300ml)',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal)),
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

  buildOrder() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: const Center(
          child: Text(
        'Order Placed',
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}

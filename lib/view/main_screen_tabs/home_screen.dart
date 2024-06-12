import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(),
        body: Stack(
          children: [
            Positioned(bottom: 0, child: buildContainer()),
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Hello Tony !',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 500,
      width: Get.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: lightGreen.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: buildC1(),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: lightGreen.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: buildC2(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: lightGreen.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: buildC3(),
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: lightGreen.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: buildC4(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildC1() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.person,
            size: 50,
            color: Colors.blue,
          ),
          Text(
            'Customers',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_circle_right_rounded,
                color: Colors.black,
                size: 65,
              ),
            ),
          )
        ],
      ),
    );
  }

  buildC2() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.production_quantity_limits_sharp,
            size: 50,
            color: Colors.green,
          ),
          Text(
            'Products',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Center(
            child: Icon(
              Icons.arrow_circle_right_rounded,
              color: Colors.black,
              size: 65,
            ),
          )
        ],
      ),
    );
  }

  buildC3() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.monetization_on_rounded,
            size: 50,
            color: Colors.yellow,
          ),
          Text(
            'Revenue',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Center(
            child: Icon(
              Icons.arrow_circle_right_rounded,
              color: Colors.black,
              size: 65,
            ),
          )
        ],
      ),
    );
  }

  buildC4() {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.date_range,
            size: 50,
            color: Colors.red,
          ),
          Text(
            'Statistics',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Center(
            child: Icon(
              Icons.arrow_circle_right_rounded,
              color: Colors.black,
              size: 65,
            ),
          )
        ],
      ),
    );
  }
}

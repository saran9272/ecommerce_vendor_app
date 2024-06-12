import 'package:ecommerce_vendor_app/view/activity_tabs/delivered_screen.dart';
import 'package:ecommerce_vendor_app/view/activity_tabs/shipping_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';


class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [lightGreen,green,Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(),
          body: const TabBarView(
              children: [ShippingScreen(), DeliveredScreen(), ]),
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text(
        'Delivery',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          70,
        ),
        child: Container(
          height: 50,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(3)),
          child: TabBar(
              labelPadding: EdgeInsets.zero,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 1),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: lightGreen),
              tabs: const [
                Tab(
                  text: 'Shipping',
                ),
                Tab(
                  text: 'Delivered',
                ),
              ]),
        ),
      ),
    );
  }

}

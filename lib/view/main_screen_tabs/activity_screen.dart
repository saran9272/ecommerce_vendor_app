import 'package:ecommerce_vendor_app/view/activity_tabs/delivery_screen.dart';
import 'package:ecommerce_vendor_app/view/activity_tabs/order_screen.dart';
import 'package:ecommerce_vendor_app/view/activity_tabs/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';


class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [lightGreen,green,Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(),
        body: ListView(
          children: [
            buildContainer()
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text('Activity',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }

  buildContainer(){
    return   Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(const OrderScreen());
            },
            child: Container (
              height: 70,width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.s4UlT2ISanXa3KHKQ2WR0AHaHa&pid=Api&P=0&h=220',),
                    ),
                    SizedBox(width: 20,),
                    Text('Orders',style: TextStyle(fontSize: 20),),
                    SizedBox(width: 140,),
                    Icon(Icons.arrow_forward_ios_rounded,size: 25,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Get.to(const DeliveryScreen());
            },
            child: Container(
              height: 70,width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.hN9z-U9t72O95GU3c_GuwwHaHa&pid=Api&P=0&h=220',),
                    ),
                    SizedBox(width: 20,),
                    Text('Delivery',style: TextStyle(fontSize: 20),),
                    SizedBox(width: 130,),
                    Icon(Icons.arrow_forward_ios_rounded,size: 25,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Get.to(const PaymentScreen());
            },
            child: Container(
              height: 70,width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.8JBOmm-AZGNvz1Rt-FJBZQHaHa&pid=Api&P=0&h=220',),
                    ),
                    SizedBox(width: 20,),
                    Text('Payment History',style: TextStyle(fontSize: 20),),
                    SizedBox(width: 50,),
                    Icon(Icons.arrow_forward_ios_rounded,size: 25,color: Colors.red,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

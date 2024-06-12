import 'package:ecommerce_vendor_app/view/main_screen_tabs/notify_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              buildContent()
            ],
          ),
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text('Notification',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }

  buildContent(){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.to(const NotifyDetailScreen());
          },
          child: Container(
            height: 60,width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 40,width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: NetworkImage('https://files.organicharvest.in/site-images/original/1-1ah_1.jpg'),fit: BoxFit.fill)
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('Organic Shampoo',style: TextStyle(fontSize: 17),),
                  const SizedBox(width: 100,),
                  const Text('Ordered',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.green),)
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 60,width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 40,width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: NetworkImage('https://healthynibblesandbits.com/wp-content/uploads/2018/10/How-to-Make-Paneer-Square-Picture.jpg'),fit: BoxFit.fill)
                  ),
                ),
                const SizedBox(width: 10,),
                const Text('Paneer',style: TextStyle(fontSize: 17),),
                const SizedBox(width: 185,),
                const Text('Ordered',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.green),)
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 60,width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 40,width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: NetworkImage('https://files.organicharvest.in/site-images/800x800/1-1AO.jpg'),fit: BoxFit.fill)
                  ),
                ),
                const SizedBox(width: 10,),
                const Text('Organic hair oil',style: TextStyle(fontSize: 17),),
                const SizedBox(width: 120,),
                const Text('Cancelled',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),)
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 60,width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 40,width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(image: NetworkImage('https://media.post.rvohealth.io/wp-content/uploads/2019/11/cashew-nut-nuts-bowl-732x549-thumbnail.jpg'),fit: BoxFit.fill)
                  ),
                ),
                const SizedBox(width: 10,),
                const Text('Cashew nuts',style: TextStyle(fontSize: 17),),
                const SizedBox(width: 140,),
                const Text('Ordered',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.green),)
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

}

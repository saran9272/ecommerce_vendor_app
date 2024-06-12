import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class DeliveredScreen extends StatelessWidget {
  const DeliveredScreen({super.key});

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
          body: ListView(
            children: [
              buildContainer()
            ],
          ),
        ));
  }

  buildContainer(){
    return Column(
      children: [
        Container(
          height: 150,width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 100,width: 100,
                  decoration:  const BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey),],
                      image: DecorationImage(image: NetworkImage('https://5.imimg.com/data5/SELLER/Default/2023/9/341206935/LU/LU/QT/37625251/marble-organics-organic-shampoo-anti-hair-fall-and-anti-dandruff-500x500.png'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Organic',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Quantity: 1 (750 ml)',style: TextStyle(fontSize: 15),),
                      Text('\$399',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                      Text('Address: (Tony) Gandhipuram',style: TextStyle(fontSize: 15),),
                      Text('Delivered Date: 29 Febraury',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: lightGreen),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 150,width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 100,width: 100,
                  decoration:  const BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 5,color: Colors.grey),],
                      image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmr9ttVl7SPPjj141CYsLQEyi7zzttY26gYg&usqp=CAU'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Panner',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Quantity: 2 (500g)',style: TextStyle(fontSize: 15),),
                      Text('\$699',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                      Text('Address: (Stark) Saibaba Colony',style: TextStyle(fontSize: 15),),
                      Text('Delivered Date: 25 Febraury',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: lightGreen),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

}

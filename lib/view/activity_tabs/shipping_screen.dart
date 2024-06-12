import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

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
      ),
    );
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
                      Text('Status: Reached Coimbatore',style: TextStyle(fontSize: 15),),
                      Text('Expected delivery by Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
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
                      Text('Status: Shipped at Bangalore',style: TextStyle(fontSize: 15),),
                      Text('Expected delivery by Tomorrow',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container
          (
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
                      image: DecorationImage(image: NetworkImage('https://media.post.rvohealth.io/wp-content/uploads/2019/11/cashew-nut-nuts-bowl-732x549-thumbnail.jpg'),fit: BoxFit.fill)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cashew Nuts',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text('Quantity: 1 (500g)',style: TextStyle(fontSize: 15),),
                      Text('\$159',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                      Text('Status: Shipped at Hyderabad',style: TextStyle(fontSize: 15),),
                      Text('Expected delivery at March 20 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
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

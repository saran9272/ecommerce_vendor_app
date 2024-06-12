import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class CancelScreen extends StatelessWidget {
  const CancelScreen({super.key});

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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
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
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmr9ttVl7SPPjj141CYsLQEyi7zzttY26gYg&usqp=CAU'),fit: BoxFit.fill)
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Panner',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text('(Fresh & Pure Paneer)',style: TextStyle(fontSize: 15,color: Colors.blue),),
                        Text('Quantity: 2 (500g)',style: TextStyle(fontSize: 15),),
                        Text('\$699',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        Text('CANCELLED',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
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
                        Text('(Fresh & Pure Paneer)',style: TextStyle(fontSize: 15,color: Colors.blue),),
                        Text('Quantity: 2 (500g)',style: TextStyle(fontSize: 15),),
                        Text('\$699',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        Text('CANCELLED',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
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
                        Text('(Fresh & Pure Paneer)',style: TextStyle(fontSize: 15,color: Colors.blue),),
                        Text('Quantity: 2 (500g)',style: TextStyle(fontSize: 15),),
                        Text('\$699',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                        Text('CANCELLED',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

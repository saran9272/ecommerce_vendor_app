import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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
          appBar: buildAppBar(),
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              buildContainer(),
              const SizedBox(height: 10,),
              const Divider(thickness: 1,color: Colors.white,),
              buildDetails(),
              const Divider(thickness: 1,color: Colors.white,),
              buildCredit()
            ],
          ),
        ));
  }

  buildAppBar() {
    return AppBar(
      // automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text(
        'Transaction Details',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
      ),
    );
  }

  buildContainer(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Received from',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
                ),
                title: Text('9876543210',style: TextStyle(fontSize: 15),),
                subtitle: Text('Tony, (Feb 10)',style: TextStyle(fontSize: 15,color: Colors.red),),
                trailing: Text('\$ 399',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Text('Banking Name: Tony Stark',style: TextStyle(fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }

  buildDetails(){
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.list_alt,size: 25,color: blue,),
              SizedBox(width: 10,),
              Text('Transfer Details',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: blue),),
            ],
          ),
          ListTile(
            title: Text('Transaction ID',style: TextStyle(fontSize: 15),),
            subtitle: Text('T2335D9876543210112',style: TextStyle(fontSize: 15,color: Colors.red),),
            trailing: Icon(Icons.copy),
          ),
        ],
      ),
    );
  }

  buildCredit(){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Credited to',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
          const ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
            ),
            title: Text('XXXXXXXXX210',style: TextStyle(fontSize: 15),),
            subtitle: Text('UTR: 6541656597',style: TextStyle(fontSize: 15,color: blue),),
            trailing: Text('\$ 399',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Customer Support',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Icon(Icons.question_mark,size: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }

}

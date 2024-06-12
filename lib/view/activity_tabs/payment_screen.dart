import 'package:ecommerce_vendor_app/view/activity_tabs/transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
          body:  ListView(
            children: [
              buildContainer()
            ],
          )
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
        'Payment History',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
      ),
    );
  }

  buildContainer(){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
          Get.to(const TransactionScreen());
        },
        child: const Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Tony, (Feb 10)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 399',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Stark,(Feb 11)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 499',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Steve,(Feb 12)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 599',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Rogers,(Feb 13)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 699',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Banner,(Feb 14)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 799',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Chris,(Feb 15)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 899',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg',),
              ),
              title: Text('Received from',style: TextStyle(fontSize: 15),),
              subtitle: Text('Robert,(Feb 16)',style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
              trailing: Text('\$ 999',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
            ),
            Divider(
              height: 10,color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }

}

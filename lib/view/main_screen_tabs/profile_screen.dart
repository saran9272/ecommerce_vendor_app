import 'package:ecommerce_vendor_app/view/main_screen_tabs/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            buildContainer(),
            buildContent()
          ],
        ),
      ),
    );
  }

  buildAppBar(){
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blue.withOpacity(0.3),
      elevation: 0,
      title: const Text('Profile',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }

  buildContainer(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 130,width: Get.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 5)]
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(image: NetworkImage('https://www.pinkvilla.com/images/2022-09/robert_downey_jr_opens_up_on_playing_iron_man.jpg')),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Robert Downey Jr',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('FE524552',style: TextStyle(fontSize: 15),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.phone,size: 20,color: blue,),
                        Text('Phone: 9876543210',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,size: 20,color: Colors.red,),
                        Text('Gandhipuram',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildContent(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 580,width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children:  [
              GestureDetector(
                onTap: (){
                  Get.to(const EditProfileScreen());
                },
                child: const ListTile(
                  title: Text('Manage Profile',style: TextStyle(fontSize: 15),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Languages',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Preferences',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('History',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Refer a Friend',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Bank Details',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Settings',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(thickness: 1,color: Colors.grey,),
              const ListTile(
                title: Text('Log Out',style: TextStyle(fontSize: 15),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }




}

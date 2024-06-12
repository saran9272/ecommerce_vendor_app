import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_vendor_app/view/main_screen_tabs/notification_screen.dart';
import 'package:ecommerce_vendor_app/view/main_screen_tabs/profile_screen.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'main_screen_tabs/activity_screen.dart';
import 'main_screen_tabs/home_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const ActivityScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavyBar(
        backgroundColor: lightGreen,
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.access_time_filled),
            title: const Text('Activity'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.notifications),
            title: const Text('Notifiction'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
        ],),

      body: screens[currentIndex],
    );
  }
}
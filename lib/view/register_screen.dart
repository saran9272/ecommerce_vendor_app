
import 'package:ecommerce_vendor_app/view/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
        body: Stack(
          children: [Positioned(bottom: 0, child: buildContainer())],
        ),
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 500,
      width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            buildTextField(),
            const SizedBox(height: 10,),
            buildButtons()
          ],
        ),
      ),
    );
  }

  buildTextField() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,width: 160,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 1)),
                    hintText: 'First Name',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
              ),
            ),
            SizedBox(
              height: 70,width: 160,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 1)),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
              ),
            ),
          ],
        ),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Company Name',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        SizedBox(height: 10,),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Email',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
        SizedBox(height: 10,),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: blue, width: 1)),
              hintText: 'Password',
              hintStyle: TextStyle(fontSize: 15, color: Colors.black54)),
        ),
      ],
    );
  }

  buildButtons(){
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 60),
                backgroundColor: Colors.grey.shade400,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
            ),
            onPressed: (){
              Get.to(const SignInScreen());
            }, child: const Text('Sign Up',style: TextStyle(fontSize: 15,color: Colors.black),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?',style: TextStyle(fontSize: 15,color: Colors.grey),),
            TextButton(onPressed: (){
              Get.to(const SignInScreen());
            }, child: const Text('Sign In',style: TextStyle(fontSize: 15,color: blue),))
          ],
        )
      ],
    );
  }
}

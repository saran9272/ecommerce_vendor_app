
import 'package:ecommerce_vendor_app/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';
import 'forgot_password_screen.dart';
import 'main_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
          children: [
            Positioned(bottom: 0, child: buildContainer()),
          ],
        ),
      ),
    );
  }

  buildContainer() {
    return Container(
      height: 450,
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
              'Sign In',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            buildTextField(),
            buildButtons()
          ],
        ),
      ),
    );
  }


  buildTextField() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
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
          SizedBox(
            height: 20,
          ),
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
      ),
    );
  }

  buildButtons(){
    return Column(
      children: [
        Align(
            alignment: Alignment.topRight,
            child: TextButton(onPressed: (){
              Get.to(const ForgotPasswordScreen());
            }, child: const Text('Forgot Password?',style: TextStyle(fontSize: 15,color: blue),))),
        const SizedBox(height: 10,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(400, 60),
              backgroundColor: Colors.grey.shade400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )
            ),
            onPressed: (){
              Get.to(const MainScreen());
            }, child: const Text('Sign In',style: TextStyle(fontSize: 15,color: Colors.black),)),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?',style: TextStyle(fontSize: 15,color: Colors.grey),),
            TextButton(onPressed: (){
              Get.to(const RegisterScreen());
            }, child: const Text('Sign Up',style: TextStyle(fontSize: 15,color: blue),))
          ],
        )
      ],
    );
  }
}

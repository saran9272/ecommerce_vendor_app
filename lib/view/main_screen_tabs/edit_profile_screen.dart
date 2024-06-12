import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                buildProfile(),
                const SizedBox(
                  height: 20,
                ),
                buildRider(),
                const SizedBox(
                  height: 10,
                ),
                buildPersonal(),
                const SizedBox(
                  height: 10,
                ),
                buildBank()
              ],
            ),
          ),
        ]),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Profile',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  buildProfile() {
    return Container(
      height: 300,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://www.pinkvilla.com/images/2022-09/robert_downey_jr_opens_up_on_playing_iron_man.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 40),
              backgroundColor: Colors.grey.shade400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
              onPressed: () {},
              icon: const Icon(Icons.edit,color: Colors.black,),
              label: const Text(
                'Edit',
                style: TextStyle(fontSize: 15,color: Colors.black),
              )),
        ),
      ),
    );
  }

  buildRider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Vendor Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 120,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Robert Downey Jr',
                    style: TextStyle(fontSize: 15),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    'Zone: Gandhipuram, Coimbatore',
                    style: TextStyle(fontSize: 15),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    'City: Coimbatore',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  buildPersonal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Personal Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 80,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '9876543210',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alternate Phone',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text('9123456780', style: TextStyle(fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  buildBank() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bank Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 120,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bank Name',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'State Bank Of India',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account No.',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '96385274139',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'IFSC Code',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'SBI00N1245963',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

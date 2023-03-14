import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:project_futter/view/home_screen.dart';
import 'package:project_futter/widgets/custome_text.dart';

class HomeWorkeForm extends StatefulWidget {
  const HomeWorkeForm({super.key});

  @override
  State<HomeWorkeForm> createState() => _HomeWorkeFormState();
}

class _HomeWorkeFormState extends State<HomeWorkeForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffe2deec),
      body: 
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .4,
            color: const Color(0xff483C73),
            width: MediaQuery.of(context).size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.currency_exchange,
                  color: Colors.white,
                  size: 70,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'اسعار الصرف',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255), 
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height * .6,
              width: 350,
              margin: const EdgeInsets.only(top: 200, right: 30, left: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(const HomeScreen());
                              },
                              child: const Text(
                                'انشاء حساب',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Color(0xff46386F),
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Color(0xff46386F),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 115),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(const HomeScreen());
                               
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    bottomLeft: Radius.circular(7),
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7),
                                  ),
                                ),
                                backgroundColor: const Color(0xff46386F),
                              ),
                              child: const Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                  fontSize: 21,
                                ),
                              ),
                            ),
                          ),
                        ],
                        // ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 7, right: 10),
                    child: textformfield(
                        hint: 'الايميل ',
                        iconone: Icons.email,
                        ),   
                      ),
                   

                  Container(
                    padding: const EdgeInsets.only(left: 7, right: 10),
                    child: textformfield(
                        hint: 'كلمة المرور',
                        iconone: Icons.password,
                        icontwo: Icons.visibility),
                  ),          
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

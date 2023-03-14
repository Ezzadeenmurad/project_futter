import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_futter/view/drawer_avast.dart';

class AvastSecurity extends StatefulWidget {
  const AvastSecurity({super.key});

  @override
  State<AvastSecurity> createState() => _AvastSecurityState();
}

class _AvastSecurityState extends State<AvastSecurity> {
  // ignore: non_constant_identifier_names
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  //List Screens = ['ضاعف حمايتك', 'فحص تلقائي', 'قفل التطبيق ', 'Anti-Theft'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey, //key of drawer
      backgroundColor: const Color(0xff160e53),
      endDrawer: draweravast(),
      body: Column(
          children: [
            //  Padding(padding: EdgeInsets.only(top: 30,)),
            Container(
              margin:  const EdgeInsets.only(top: 25,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        backgroundColor: Colors.yellow,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                        )),
                    child: const Text(
                      " ترقية",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 55),
                    child: const Text(
                      "Avast Security",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.only(),
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {
                        scaffoldkey.currentState?.openEndDrawer();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.height * .28,
                    height: MediaQuery.of(context).size.height * .3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff1d2f5e),
                        width: 4,
                      ),
                    ),
                    //color: Colors.red,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "فحص الان",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        // padding: const EdgeInsets.all(20),
                        backgroundColor: const Color(0xff43ed9c),
                      ),
                    ),
                  ),
                  const Text(
                    "لم يتم الكشف عن اي تهديدات ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff43ed9c),
                    ),
                  ),
                  const Text(
                    " 29 من ايام منذ أخر فحص ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            Container(
              margin: const EdgeInsets.only(top: 12, left: 15),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      margin: const EdgeInsets.only(right: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff261c6a),
                              padding: const EdgeInsets.only(
                                bottom: 25,
                                left: 56,
                                right: 55,
                                top: 30,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                ),
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.cleaning_services,
                                size: 30,
                                color: Colors.black,
                              ),
                              const Text("تنظيف",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(
                             bottom: 25,
                              left: 22,
                              right: 12,
                              top: 30,
                            ),
                            backgroundColor: const Color(0xff261c6a),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                              ),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.cleaning_services,
                              size: 30,
                              color: Colors.black,
                            ),
                            const Text("معزز ذاكرة التخزين",
                                style: TextStyle(
                                 
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)
                                    
                                    )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8,top:5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff261c6a),
                              padding: const EdgeInsets.only(
                                bottom: 25,
                                left: 35,
                                right: 22,
                                top: 20,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(15),
                                ),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.cleaning_services,
                                size: 30,
                                color: Colors.black,
                              ),
                              const Text("فحص التلقائي",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)
                                      ),

                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(
                               bottom: 25,
                                  left: 45,
                                  right: 30,
                                  top: 30,
                              ),
                              backgroundColor: const Color(0xff261c6a),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                ),
                              )),
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.cleaning_services,
                                size: 30,
                                color: Colors.black,
                              ),
                              const Text("Wi-Fi فحص",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}

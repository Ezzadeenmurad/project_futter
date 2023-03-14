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
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  //List Screens = ['ضاعف حمايتك', 'فحص تلقائي', 'قفل التطبيق ', 'Anti-Theft'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: const Color(0xff160e53),
      endDrawer: draweravast(), 
      body: Column(
        children: [
          Container(
            margin:  const EdgeInsets.only(top: 25,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ElevatedButton(             
                    onPressed: () {},
                    style:ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      backgroundColor: Colors.yellow,
                      shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27),
                          bottomRight: Radius.circular(27),
                          bottomLeft: Radius.circular(27)
                        ),
                      )
                    ),
                    child: const Text(
                      " ترقية",
                       style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),
                    ),    
                  ),
                Container(
                  margin:  const EdgeInsets.only(left:55 ),
                  child: const Text(
                    "Avast Security",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              
                Container(
                  margin: const EdgeInsets.only(left:10 ),
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
          Container(
            margin: const EdgeInsets.only(top: 25,bottom: 22),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                //  margin: const EdgeInsets.only(bottom: 22),
                  color: Colors.red,       
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
                      padding: const EdgeInsets.all(70),
                      backgroundColor: const Color(0xff43ed9c),
                    ),
                  ),
                ),
                const Text(
                  "لم يتم الكشف عن اي تهديدات ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff43ed9c),
                  ),
                ),
                const Text(
                  " 29 من ايام منذ أخر فحص ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            //margin: const EdgeInsets.only(top: 15, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff261c6a),
                            padding: const EdgeInsets.only(
                              bottom: 35,
                              left: 55,
                              right: 55,
                              top: 35,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                              ),
                            )
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            bottom: 35,
                            left: 58,
                            right: 58,
                            top: 35,
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
                          const Text("تنظيف",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
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

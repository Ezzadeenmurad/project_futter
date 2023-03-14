import 'package:flutter/material.dart';

Drawer draweravast(){
  return( 
    Drawer(
      backgroundColor:const Color(0xff160e53) ,
        child: ListView(
          children: [
            Container( 
             decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                  color: Color(0xff39326d),
                  width: 1.0,
                  ),
               ),
             ),
              padding: const EdgeInsets.only(bottom: 20, top: 44, right: 10),
              child:  const Text(
                ' Avast',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.end,
              ),
              
            ),
            Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text(
                     'فحص تلقائي',
                     textAlign:TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text(
                    "قفل التطبيق",
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Do something
                  },
                ),
                                ListTile(
                  title: const Text(
                    'Anti-Theft',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Do something
                  },
                ),
              ],
            ),
          ],
        ),
      )
  );
}
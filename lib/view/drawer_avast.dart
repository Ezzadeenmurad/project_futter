import 'package:flutter/material.dart';

Drawer draweravast(){
  return( 
    Drawer(
        child: ListView(
          children: [
            Container(
              child:  Text(
                ' Avast',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.end,
              ),
              color: Color(0xff160e53),
              padding: const EdgeInsets.only(bottom: 20, top: 44, right: 10),
              
            ),
            Column(
              children: [
                ListTile(
                  title: const Text("قفل التطبيق",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  onTap: () {
                    // Do something
                  },
                ),
                ListTile(
                  title: const Text(
                    'فحص تلقائي',
                    style: TextStyle(
                      fontSize: 20,
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
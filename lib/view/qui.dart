import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        title: const Center(child: Text("ezzaldeen")),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
          margin: const EdgeInsets.only(top: 30),
          child: Image.asset("assets/images/bue.jpeg"),
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("facbook"),
              Text("twitter")
            ],
          ),
          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
 
        },
      ),
    );
  }
}

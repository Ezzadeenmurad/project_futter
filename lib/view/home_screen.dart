import 'package:flutter/material.dart';
import 'package:project_futter/view/progress_indicator.dart';
import 'package:project_futter/view/slider.dart';
import 'package:project_futter/view/snackbar.dart';
import 'package:project_futter/view/widgets_5.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic txt;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Home Screen")), actions: [
        
      ]),
      body:Container(
          margin:EdgeInsets.only(left: 40) ,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed:(){
                          Navigator.push(context,
                                         MaterialPageRoute(
                                          builder: (context) => const Widgets()
                                          )
                          );
                        },
                         child:Text("Widgets 5"),
                         ),

                      ElevatedButton(
                        style: ButtonStyle( ),
                        onPressed:(){
                          Navigator.push(context,
                                         MaterialPageRoute(
                                          builder: (context) => const Widgets()
                                          )
                          );
                        },
                         child:Text("Avast Security"),
                         ),   
                    ],
                  ),
                 ],
          ), 
        ),
    );
  }
}

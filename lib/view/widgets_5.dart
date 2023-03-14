import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
      ),
       floatingActionButton: floatingbutton(),
       body:Container(
        margin: EdgeInsets.only(left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            snackbar(),
            circularprogress(),
          ],
        ),
       ),
      
    );
  }

 PopupMenuButton popupMenuButton(){
  List Screens = [
      'Sliders',
      'progressIndicator',
      'Snackbar',
    ];
  return(
    PopupMenuButton(
          icon:  Icon(Icons.menu),
          color: Colors.grey,
          itemBuilder: (context) {
            return Screens.map((Screen) {
              return PopupMenuItem(value: Screen, child: Text(Screen));
            }).toList();
          },
          onCanceled: () {
            setState(() {
           
            });
          },
          onSelected: (value) {
             switch (value) {
              case 'Sliders':
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Sliders()));
                break;
              case 'progressIndicator':
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const progressIndicator()));
                break;
              case 'Snackbar':
                //Navigator.push(context,
                    //MaterialPageRoute(builder: (context) => const Snackbar()));
                break;
            } 
          },
        )
  );
 }


  ElevatedButton snackbar(){
    return(
      ElevatedButton(onPressed: (){
           final snackBar = SnackBar(
             backgroundColor: Colors.red,
             action: SnackBarAction(
               label: "Done",
               onPressed: (){},
             ),
             content: const Text("Not connect"),
             duration: const Duration(seconds: 5),);
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
         },
          child: const Text("snackbar"))
    );
  }
  CircularProgressIndicator circularprogress(){
    return (
      CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            strokeWidth: 5,
            value:.50,
         )
    );
  }
  FloatingActionButton floatingbutton(){
   return (
        FloatingActionButton.extended(
          label: const Text("Add"),
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 92, 100, 206),
          splashColor: const Color.fromARGB(255, 216, 219, 35),
          foregroundColor: Colors.red,
       )
   );
  }
}

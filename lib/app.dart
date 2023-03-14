import 'package:flutter/material.dart';
import 'package:project_futter/view/avast_security_screen.dart';
import 'package:project_futter/view/text_form_home_worke.dart';

import 'view/home_screen.dart';
//import 'home_work_form.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AvastSecurity(),
    );
  }
}

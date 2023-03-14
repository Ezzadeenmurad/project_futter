import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class stepper extends StatefulWidget {
  const stepper({super.key});

  @override
  State<stepper> createState() => _stepperState();
}
// ignore: camel_case_types
class _stepperState extends State<stepper> {
  // ignore: non_constant_identifier_names
  int CurrentStep = 0;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(),
      
    );
  }
}

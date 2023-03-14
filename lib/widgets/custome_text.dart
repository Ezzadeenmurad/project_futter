import 'package:flutter/material.dart';

TextFormField textformfield({required String hint, IconData? iconone, IconData? icontwo}){
  return TextFormField(
  textAlign: TextAlign.end,
  decoration: InputDecoration(
    hintText: hint,
    suffixIcon: Icon(iconone),
    prefixIcon: Icon(icontwo),
  ),
);
}


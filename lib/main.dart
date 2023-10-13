import 'package:flutter/material.dart';
import 'package:iris/utils/colors.dart';
import 'screen/home.dart';
void main(){
  runApp(MaterialApp(
    title: 'Iris',
    theme: ThemeData(
      fontFamily: 'HindSiliguri',
      brightness: Brightness.light,
      primaryColor: Colors.orange,
      primarySwatch: createMaterialColor(Colors.deepOrange)
    ),
    home: const Home(),
    debugShowCheckedModeBanner: false,
  ));
}

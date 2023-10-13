import 'package:flutter/material.dart';
import 'package:iris/screen/containers/container4.dart';

import '../utils/constants.dart';
import '../widgets/navbar.dart';
import 'containers/container1.dart';
import 'containers/container2.dart';
import 'containers/container3.dart';
import 'containers/container5.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            container1state(),
            SizedBox(
              height: 20,
            ),
            container2state(),
            container3state(),
            container4state(),
            container5state(),
          ],
        ),
      ),
    );
  }
}

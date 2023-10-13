import 'package:flutter/material.dart';
import 'package:iris/utils/colors.dart';
import 'package:iris/utils/constants.dart';
import 'package:iris/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>MobileNavBar(),
      desktop: (BuildContext context) =>DesktopNavBar(),

    );
  }
  Widget MobileNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }
  Widget DesktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          SizedBox(
              height: 45,
              child: ElevatedButton(
                style: borderedButtonStyle,
                  onPressed: (){},
                  child: Text("Request a demo",style: TextStyle(color: AppColors.primary),)))
        ],
      ),
    );
  }
  Widget navButton(String text){
    return Container(margin: const EdgeInsets.symmetric(horizontal:15),child: TextButton( onPressed: () {  }, child: Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: w!/85),),));
  }
  Widget navLogo(){
    return const SizedBox(
      width: 110,
        child: Image(image: AssetImage(logo)),
    );
  }
}

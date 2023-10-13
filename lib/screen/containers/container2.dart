import 'package:flutter/material.dart';
import 'package:iris/utils/colors.dart';
import 'package:iris/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class container2state extends StatefulWidget {
  const container2state({super.key});

  @override
  State<container2state> createState() => _container2stateState();
}

class _container2stateState extends State<container2state> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer2(),
      desktop: (BuildContext context) => DesktopContainer2(),
    );
  }

  Widget MobileContainer2() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: const Image(
                  image: AssetImage(dashboard)),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Column(
                children: [
                  companyLogo(fb),
                  companyLogo(google),
                  companyLogo(cocacola),
                  companyLogo(linkedin),
                ],
              ),
            )
          ],
        ));
  }

  Widget DesktopContainer2() {
    return Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  right:-20,top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1))),
                  ),
                ),
                Positioned(
                  left:-20,bottom: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector2))),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(dashboard))),
                  ),
                )
              ],
            )),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companyLogo(fb),
                  companyLogo(google),
                  companyLogo(cocacola),
                  companyLogo(linkedin),
                ],
              ),
            )
          ],
        ));
  }

  Widget companyLogo(String data) {
    return Container(
      width: 160,
      height: 40,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(data))),
    );
  }
}

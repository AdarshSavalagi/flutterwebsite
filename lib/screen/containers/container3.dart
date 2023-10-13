import 'package:flutter/material.dart';
import 'package:iris/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class container3state extends StatefulWidget {
  const container3state({super.key});

  @override
  State<container3state> createState() => _container3stateState();
}

class _container3stateState extends State<container3state> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  Widget mobileContainer3() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 20),
      // height: h!/1.2,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: w! / 1.2,
            width: w! / 1.2,
            child: const Image(
              image: AssetImage(illustrator),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'This is dummy text',
            style: TextStyle(color: Colors.grey.shade400, fontSize: w! / 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Real-time\nsupport\nwith cloud',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: w! / 1.2,
            child: Text(
              'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
              style: TextStyle(color: Colors.grey.shade400, fontSize: w! / 30),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 161,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Load more",
                      style: TextStyle(color: AppColors.primary, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.primary,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget desktopContainer3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 13),
      height: h!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This is dummy text',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Real-time\nsupport\nwith cloud',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris\nenim accumsan nisi, tincidunt vel. Enim ipsum, amet\nquis ullamcorper eget ut.',
                  style:
                      TextStyle(color: Colors.grey.shade400, fontSize: w! / 60),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 161,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Connect us ",
                            style: TextStyle(
                                color: AppColors.primary, fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.primary,
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Image(
              image: const AssetImage(illustrator),
              height: 530,
              width: (w! - 2 * (w! / 13)) / 2,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class container4state extends StatefulWidget {
  const container4state({super.key});

  @override
  State<container4state> createState() => _container4stateState();
}

class _container4stateState extends State<container4state> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobilecontainer4(),
      desktop: (BuildContext context) => desktopcontainer4(),
    );
  }

  Widget mobilecontainer4() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(illustration2),
            height: w! / 1.2,
            width: w! / 1.2,
          ), const SizedBox(
            height: 10,
          ),
          Text(
            'This is dummy text',
            style: TextStyle(color: Colors.grey.shade400, fontSize: w! / 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Save cost\nfor you\nfamily',
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
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 160,
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

  Widget desktopcontainer4() {
    return Container(
      height: h!,
      margin: EdgeInsets.symmetric(horizontal: w! / 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(illustration2),
            height: 530,
            width: (w! - 2 * (w! / 13)) / 2,
          ),
          Column(
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
                'Save cost\nfor you\nfamily',
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
                width: 160,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Connect us ",
                          style:
                              TextStyle(color: AppColors.primary, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColors.primary,
                        ),
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}

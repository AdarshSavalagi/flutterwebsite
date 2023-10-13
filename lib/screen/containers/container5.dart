import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/colors.dart';
import '../../utils/constants.dart';

class container5state extends StatefulWidget {
  const container5state({super.key});

  @override
  State<container5state> createState() => _container5stateState();
}

class _container5stateState extends State<container5state> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobilecontainer5(),
      desktop: (BuildContext context) => desktopcontainer5(),
    );
  }

  Widget mobilecontainer5() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage(illustration3),
            height: w! / 1.2,
            width: w! / 1.2,
          ),const SizedBox(
            height: 10,
          ),
          Text(
            "This is dummy text ",
            style: TextStyle(color: Colors.grey.shade400, fontSize: w! / 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Use anytime\nwhen you\nneed',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: w! / 10),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: w! / 1.2,
            child: Text(
              'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
              textAlign: TextAlign.center,
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
                      "Connect us ",
                      style: TextStyle(color: AppColors.primary, fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.primary,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget desktopcontainer5() {
    return Container(
      height: h!,
      margin: EdgeInsets.symmetric(horizontal: w! / 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is dummy text ",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Use anytime\nwhen you\nneed',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: w! / 20),
              ),
              const SizedBox(
                height: 15,
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
          )),
          Expanded(
              child: Image(
            image: const AssetImage(illustration3),
            height: 530,
            width: (w! - 2 * (w! / 13)) / 2,
          ))
        ],
      ),
    );
  }
}

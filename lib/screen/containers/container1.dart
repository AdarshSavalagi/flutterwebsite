import 'package:flutter/material.dart';
import 'package:iris/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class container1state extends StatefulWidget {
  const container1state({super.key});

  @override
  State<container1state> createState() => _container1stateState();
}

class _container1stateState extends State<container1state> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileContainer1(),
      desktop: (BuildContext context) => DesktopContainer1(),
    );
  }

  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w!/13,vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: w! / 1.2,
            width: w! / 1.2,
            child: const Image(
              image: AssetImage(illustration1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Helps you to organize\nyour income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_down),
            label: const Text('Try a free demo'),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                backgroundColor: MaterialStateProperty.all(AppColors.primary)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Web IOS Android",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 13, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nExpenses to \nSave Money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Helps you to organize your income and expenses',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: w!/60),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down),
                        label: const Text('Try a free demo'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Web IOS Android",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          )),
          const Expanded(
              child: SizedBox(
            height: 530,
            child: Image(
              image: AssetImage(illustration1),
            ),
          )),
        ],
      ),
    );
  }
}

import 'package:ecom/core/constants/appcolors.dart';
import 'package:ecom/core/constants/appimages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 430,
            decoration: BoxDecoration(
              color: Appcolors.primarycolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
              ),
            ),
            child: Center(child: Image.asset(Appimages.welcome)),
          ),
          Gap(40),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get The Freshest Fruit Salad Combo',
                  style: TextStyle(
                    color: Appcolors.txtcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(8),
                Text(
                  'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                  style: TextStyle(
                    color: Appcolors.sectxtcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.primarycolor,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Let\'s Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

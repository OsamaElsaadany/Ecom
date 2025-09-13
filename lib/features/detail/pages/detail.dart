import 'package:ecom/core/constants/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      appBar: AppBar(
        backgroundColor: Appcolors.primarycolor,
        leadingWidth: 107,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 13, 0, 13),
              decoration: BoxDecoration(
                color: Appcolors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Appcolors.txtcolor,
                    size: 16,
                  ),
                  Gap(4),
                  Text(
                    'Go back',
                    style: TextStyle(
                      color: Appcolors.txtcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 260,
            decoration: BoxDecoration(color: Appcolors.primarycolor),
            child: Center(
              child: Image.asset(
                'assets/images/m1.png',
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Appcolors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Berry mango combo',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.txtcolor,
                        ),
                      ),
                      Gap(10),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,

                            decoration: BoxDecoration(
                              color: Appcolors.primarycolor.withValues(
                                alpha: .3,
                              ),

                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Appcolors.primarycolor,
                              size: 35,
                            ),
                          ),
                          Gap(10),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.txtcolor,
                            ),
                          ),
                          Gap(10),
                          Container(
                            width: 30,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Appcolors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.remove_circle_outline_rounded,
                              color: Appcolors.txtcolor,
                              size: 40,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$5.99',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.txtcolor,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Appcolors.whgrcolor, thickness: 3),
                      Gap(10),
                      Text(
                        'One Pack Contains:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.txtcolor,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Appcolors.txtcolor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(10),
                      Divider(color: Appcolors.whgrcolor, thickness: 3),
                      Gap(10),
                      Text(
                        'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                        style: TextStyle(
                          fontSize: 16,
                          color: Appcolors.txtcolor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Appcolors.primarycolor.withValues(
                                alpha: .3,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Appcolors.primarycolor,
                              size: 35,
                            ),
                          ),
                          Gap(50),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Appcolors.primarycolor,
                                minimumSize: Size(double.infinity, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

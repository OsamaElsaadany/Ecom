import 'package:ecom/core/constants/appcolors.dart';
import 'package:ecom/core/constants/appicons.dart';
import 'package:ecom/features/welcome/pages/model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Appcolors.txtcolor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 10),
            child: Column(
              children: [
                Icon(Icons.shopping_cart, color: Appcolors.primarycolor),
                Text('My basket',
                    style: TextStyle(
                      fontSize: 12,
                      color: Appcolors.txtcolor,
                    )), 
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Tony, What fruit salad combo do you want today?",
                style: TextStyle(
                  fontSize: 20,
                  color: Appcolors.txtcolor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Appcolors.txtcolor,
                        ),
                        hintText: "Search for fruit salad combos",
                        hintStyle: TextStyle(color: Appcolors.txtcolor),
                        filled: true,
                        fillColor: Appcolors.graycolor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Gap(5),
                  Image.asset(Appicons.icoIcon, width: 50, height: 50),
                ],
              ),
              Gap(30),
              Text(
                'Recommended Combos',
                style: TextStyle(
                  fontSize: 24,
                  color: Appcolors.txtcolor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(10),
              SizedBox(
                height: 205,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: .3),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Appcolors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.favorite_border,
                                color: Appcolors.primarycolor,
                                size: 20,
                              ),
                            ),
                          ),
                          Image.asset(
                            product.productlist[index].image,
                            width: 100,
                            height: 100,
                          ),
                          Gap(5),
                          Text(
                            product.productlist[index].name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Appcolors.txtcolor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  product.productlist[index].price,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Appcolors.primarycolor,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Appcolors.primarycolor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Appcolors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(13);
                  },
                  itemCount: product.productlist.length,
                ),
              ),
              Gap(20),
              Row(
                spacing: 20,
                children: [
                  Text(
                    'Hottest',
                    style: TextStyle(
                      fontSize: 24,
                      color: Appcolors.txtcolor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18,
                      color: Appcolors.txtcolor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'New combo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Appcolors.txtcolor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Top',
                    style: TextStyle(
                      fontSize: 18,
                      color: Appcolors.txtcolor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Gap(20),

              SizedBox(
                height: 205,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: .3),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Appcolors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.favorite_border,
                                color: Appcolors.primarycolor,
                                size: 20,
                              ),
                            ),
                          ),
                          Image.asset(
                            product.productlist[index].image,
                            width: 100,
                            height: 100,
                          ),
                          Gap(5),
                          Text(
                            product.productlist[index].name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Appcolors.txtcolor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  product.productlist[index].price,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Appcolors.primarycolor,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Appcolors.primarycolor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Appcolors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Gap(13);
                  },
                  itemCount: product.productlist.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

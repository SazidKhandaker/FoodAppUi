// ignore_for_file: prefer_const_constructors
//Hamburger is a sandwich consisting of a cooked meat patty on a bun or roll.Hamburgers are traditionally made with ground beef and served with onions, tomatoes, lettuce, ketchup, and other garnishes.
import 'dart:ffi';

import 'package:foodappui/discountpage.dart';
import 'package:foodappui/fontsizegoogle.dart';
import 'package:foodappui/single_food.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:foodappui/appfitured.dart';
import 'package:foodappui/fooditem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappui/svg.dart';
import 'package:foodappui/upperside.dart';

import 'checkout.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List myarry = [
    ["FEATURED", true],
    ["COMBO", false],
    ["FAVORITES", false],
    ["RECOMANDED", false],
  ];
  List foodDeliveryprice = [
    ["Free Delivery", true],
    [20, false],
    [40, false],
    [60, false],
  ];
  void onclickfunction(int index) {
    setState(() {
      for (int i = 0; i < myarry.length; i++) {
        myarry[i][1] = false;
      }

      myarry[index][1] = true;
    });
  }

  bool featureclick = false;
  Featuredfctn() {
    setState(() {
      if (featureclick == false) {
        featureclick = true;
      } else if (featureclick == true) {
        featureclick = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            //Upperside
            Upperside(),
            //Search Text
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "SEARCH FOR \n RECIPES ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            //Search Text Field
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, top: 10),
              child: Text(
                "Recommended ",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => singleitem(
                                  photoname: "assets/burger.png",
                                  rating: 4.8,
                                  foodname: "HameBurger",
                                  description:
                                      "Hamburger is a sandwich consisting of a cooked meat patty on a bun or roll.Hamburgers are traditionally made with ground beef and served with onions, tomatoes, lettuce, ketchup, and other garnishes.",
                                  price: 250,
                                )),
                      );
                    },
                    child: fooditem(
                        name: "HameBurger",
                        price: "250",
                        photo: "assets/burger.png",
                        color: Color.fromARGB(255, 233, 191, 130)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => singleitem(
                                  photoname: "assets/fries.png",
                                  rating: 3.2,
                                  foodname: "Fries",
                                  description:
                                      "Fries It has a sweet and salty bite, makes just about any food more appetizing, and you can even clean with it!.",
                                  price: 130,
                                )),
                      );
                    },
                    child: fooditem(
                        name: "Chips",
                        price: "120",
                        photo: "assets/fries.png",
                        color: Colors.lightBlue),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => singleitem(
                                  photoname: "assets/sandwich.png",
                                  rating: 4.4,
                                  foodname: "SandWich",
                                  description:
                                      "A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.",
                                  price: 180,
                                )),
                      );
                    },
                    child: fooditem(
                        name: "Sandwich",
                        price: "180",
                        photo: "assets/sandwich.png",
                        color: Color.fromARGB(255, 201, 188, 237)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => singleitem(
                                  photoname: "assets/doughnut.png",
                                  rating: 2.8,
                                  foodname: "Doughnut",
                                  description:
                                      "There are really only seven ingredients: Yeast, milk, flour, butter, sugar, salt, and eggs. However, these magical, deep-fried doughy treats can take some time to make. Driving through your nearest Dunkin' Donuts can serve as a much speedier and convenient solution for your doughnut cravings.",
                                  price: 90,
                                )),
                      );
                    },
                    child: fooditem(
                        name: "Doughnut",
                        price: "90",
                        photo: "assets/doughnut.png",
                        color: Color.fromARGB(255, 172, 231, 173)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myarry.length,
                    itemBuilder: ((context, index) {
                      return Appfit(
                          featuredname: myarry[index][0],
                          isselected: myarry[index][1],
                          onclick: (() {
                            onclickfunction(index);
                            showModalBottomSheet<Void>(
                                context: context,
                                builder: (BuildContext) {
                                  return Container(
                                      height: 700,
                                      decoration: BoxDecoration(
                                        color: myarry[0][1]
                                            ? Color(0xffFFAB91)
                                            : myarry[1][1]
                                                ? Colors.amber
                                                : myarry[2][1]
                                                    ? Color(0xff80CBC4)
                                                    : myarry[3][1]
                                                        ? Color(0xffBBDEFB)
                                                        : Colors.blueGrey,
                                      ),
                                      child: myarry[0][1]
                                          ? SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Featured",
                                                    style: GoogleFonts.acme(
                                                        fontSize: 30),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 100,
                                                          width: 200,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff81C784),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "Resturants discount\  offer",
                                                              style: GoogleFonts.adamina(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 100,
                                                          width: 200,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xff81C784),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "Current Resturants Open",
                                                              style: GoogleFonts.adamina(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Googlefontsize(
                                                      sizeoffont: 30.0,
                                                      clr: Colors.black,
                                                      text: "Delivery Fee"),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Image.asset(
                                                    "assets/Deliveryfee.png",
                                                    height: 70,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      containerfor("Free"),
                                                      containerfor("30 taka"),
                                                      containerfor("40 taka"),
                                                      containerfor("60 taka"),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          : myarry[1][1]
                                              ? Column(
                                                  children: [
                                                    Googlefontsize(
                                                        sizeoffont: 30.0,
                                                        clr: Colors.black,
                                                        text: "Combo Offer"),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        children: [
                                                          combofctn(
                                                              "assets/Combo.png",
                                                              "Coke and fries",
                                                              Color.fromARGB(
                                                                  255,
                                                                  86,
                                                                  142,
                                                                  163)),
                                                          combofctn(
                                                              "assets/BurgerCombo.png",
                                                              "Burger Combo",
                                                              Color.fromARGB(
                                                                  255,
                                                                  86,
                                                                  142,
                                                                  163)),
                                                          combofctn(
                                                              "assets/Burgercombo2.png",
                                                              "Burger combo 2",
                                                              Color.fromARGB(
                                                                  255,
                                                                  86,
                                                                  142,
                                                                  163)),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        children: [
                                                          combofctn(
                                                              "assets/Cakecombo.png",
                                                              "Suice Combo",
                                                              Color.fromARGB(70,
                                                                  200, 76, 76)),
                                                          combofctn(
                                                              "assets/Combo2.png",
                                                              "Sweet Combo",
                                                              Color.fromARGB(70,
                                                                  200, 76, 76)),
                                                          combofctn(
                                                              "assets/Chicken.png",
                                                              "Chicken Combo",
                                                              Color.fromARGB(70,
                                                                  200, 76, 76)),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              : myarry[2][1]
                                                  ? Column(
                                                      children: [
                                                        Googlefontsize(
                                                            sizeoffont: 30.0,
                                                            clr: Colors.black,
                                                            text:
                                                                "Favorits Item"),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            children: [
                                                              Favouritefoodfctn(
                                                                  "assets/pizza.png",
                                                                  4.2,
                                                                  "Pizza"),
                                                              Favouritefoodfctn(
                                                                  "assets/Fvrt.png",
                                                                  4.5,
                                                                  "Burger"),
                                                              Favouritefoodfctn(
                                                                  "assets/burger.png",
                                                                  4.8,
                                                                  "Burger"),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  : myarry[3][1]
                                                      ? Column(
                                                          children: [
                                                            Googlefontsize(
                                                                sizeoffont:
                                                                    30.0,
                                                                clr: Colors
                                                                    .black,
                                                                text:
                                                                    "Recommended"),
                                                            SizedBox(
                                                              height: 25,
                                                            ),
                                                            SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                children: [
                                                                  //
                                                                  recomandationfctn(
                                                                      "assets/Chicken.png",
                                                                      "Chicken"),
                                                                  recomandationfctn(
                                                                      "assets/taco.png",
                                                                      "Taco"),
                                                                  recomandationfctn(
                                                                      "assets/popcorn.png",
                                                                      "Pop Corn"),
                                                                  recomandationfctn(
                                                                      "assets/hotdog.png",
                                                                      "Hot Dog"),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 35,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top:
                                                                          25.0),
                                                              child: Container(
                                                                height: 60,
                                                                width: 180,
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Color(
                                                                            0xff757575),
                                                                        width:
                                                                            2),
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          60,
                                                                      width:
                                                                          140,
                                                                      decoration: BoxDecoration(
                                                                          color: Color(0xff4DB6AC),
                                                                          borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(50),
                                                                            bottomLeft:
                                                                                Radius.circular(50),
                                                                            bottomRight:
                                                                                Radius.circular(180),
                                                                          )),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => Checkoutpage()),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            "Buy Now",
                                                                            style:
                                                                                TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .shopping_cart,
                                                                      color: Colors
                                                                          .green,
                                                                      size: 25,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      : Text("another page"));
                                });
                          }));
                    })),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkoutpage()),
                          );
                        },
                        child: Discount(
                          photo: "assets/hotdog.png",
                          foodname: "Delicious hot dog",
                          price1: "200",
                          price2: "170",
                          clr: Color.fromARGB(255, 246, 186, 206),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkoutpage()),
                          );
                        },
                        child: Discount(
                          photo: "assets/taco.png",
                          foodname: "Spicy Taco",
                          price1: "180",
                          price2: "140",
                          clr: Colors.indigoAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkoutpage()),
                          );
                        },
                        child: Discount(
                          photo: "assets/popcorn.png",
                          foodname: "Pop Corn",
                          price1: "170",
                          price2: "120",
                          clr: Color.fromARGB(255, 175, 111, 218),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 25.0),
                      child: GestureDetector(
                        onDoubleTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkoutpage()),
                          );
                        },
                        child: Discount(
                          photo: "assets/pizza.png",
                          foodname: "Sea Food Pizza",
                          price1: "750",
                          price2: "690",
                          clr: Colors.indigoAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //combofuction

  combofctn(String chobi, String name, Color clr) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: clr,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$chobi",
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$name",
              style:
                  GoogleFonts.roboto(fontSize: 21, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  containerfor(String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: GestureDetector(
        onTap: () {
          Featuredfctn();
        },
        child: Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            color: featureclick ? Color(0xfff7E57C2) : Colors.white70,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black54, width: 2),
          ),
          child: Text(
            "$name",
            style: GoogleFonts.oswald(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  //Favourite food function

  Favouritefoodfctn(String photo, double rating, String name) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 350,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xffF9FBE7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$photo",
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 70,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("$rating",
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                  ],
                ),
                Text(
                  "$name",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  recomandationfctn(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black38,
              child: Image.asset(
                "$photo",
                height: 70,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$name",
              style:
                  GoogleFonts.abel(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

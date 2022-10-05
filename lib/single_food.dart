// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappui/fontsizegoogle.dart';
import 'package:foodappui/ingredient.dart';
import 'package:google_fonts/google_fonts.dart';

class singleitem extends StatefulWidget {
  //singleitem({super.key});
  final String photoname;
  final double rating;
  final String foodname;
  final String description;
  final int price;

  singleitem(
      {Key? key,
      required this.photoname,
      required this.rating,
      required this.foodname,
      required this.description,
      required this.price})
      : super(key: key);
  //assets/burger.png

  // final String photoname;
  // final int rating;

  // singleitem(
  //     {required this.photoname,
  //     required this.rating,
  //     required this.foodname,
  //     required this.description,
  //     required this.price});

  @override
  State<singleitem> createState() => _singleitemState();
}

class _singleitemState extends State<singleitem> {
  var number = 0;

  Addfctn() {
    setState(() {
      number++;
    });
  }

  subtractionfctn() {
    setState(() {
      if (number <= 0) {
        number = 0;
      } else {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 370,
              width: double.infinity,
              color: Colors.white,
              child: Stack(children: [
                Container(
                  height: 300,
                  child: Image.asset(
                    "assets/Backgroundfood.jpeg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 120,
                    child: Container(
                      child: Image.asset("${widget.photoname}"),
                    ))
              ]),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/star.svg",
                            height: 20,
                            color: Colors.deepOrangeAccent,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "${widget.rating}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Googlefontsize(
                            sizeoffont: 35.0,
                            clr: Colors.black,
                            text: '${widget.foodname}',
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey[200]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    subtractionfctn();
                                  },
                                  child: Icon(Icons.horizontal_rule),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "$number",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        Addfctn();
                                      },
                                      child: Icon(Icons.add))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Googlefontsize(
                        sizeoffont: 30.0,
                        clr: Colors.black54,
                        text: "Ingredients"),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Ingredients(
                            chobi: "assets/cheesee.png",
                            name: "Cheese",
                          ),
                          Ingredients(
                            chobi: "assets/onion.png",
                            name: "Onion",
                          ),
                          Ingredients(
                            chobi: "assets/Ketchup.png",
                            name: "ketchup",
                          ),
                          Ingredients(
                            chobi: "assets/Egg.png",
                            name: "EGG",
                          ),
                          Ingredients(
                            chobi: "assets/tomatoo.png",
                            name: "Tomatoo",
                          ),
                          Ingredients(
                            chobi: "assets/Beef.png",
                            name: "Beef",
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Description",
                      style: GoogleFonts.aclonica(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      " ${widget.description}",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${widget.price}",
                          style: GoogleFonts.dangrek(fontSize: 25),
                        ),
                        GestureDetector(
                          onTap: () {
                            print(number * widget.price);
                          },
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xff37474F)),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(90),
                                          bottomLeft: Radius.circular(90),
                                          bottomRight: Radius.circular(130)),
                                      color: Color(0xff5C6BC0)),
                                  child: Center(
                                      child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Color(0xff00897B),
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

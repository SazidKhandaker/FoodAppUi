import 'package:foodappui/Homepage.dart';
import 'package:foodappui/fontsizegoogle.dart';
import 'package:foodappui/sigin.dart';
import 'package:foodappui/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Discount extends StatelessWidget {
  String price1;
  String price2;
  String photo;
  String foodname;
  Color clr;
  Discount(
      {required this.photo,
      required this.foodname,
      required this.price1,
      required this.price2,
      required this.clr});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 140,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: clr,
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              "$photo",
              height: 40,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 25,
              ),
              //Delicious hot dog
              Googlefontsize(sizeoffont: 28.0, clr: clr, text: foodname),
              SizedBox(
                height: 15,
              ),
              Svgpic(),
              SizedBox(
                height: 10,
              ),
              Text(
                "$price1 BDT",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 20,
                    color: Colors.redAccent),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "$price2 BDT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class fooditem extends StatelessWidget {
  final String name;
  final String price;
  final String photo;
  final Color color;
  fooditem(
      {required this.name,
      required this.price,
      required this.photo,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 15),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    "$photo",
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  "$name",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                Text(
                  "$price BDT",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

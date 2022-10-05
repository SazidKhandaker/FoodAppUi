import 'package:flutter/material.dart';

class Upperside extends StatelessWidget {
  const Upperside({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 10, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            iconSize: 30,
          ),
          CircleAvatar(
            radius: 28,
            backgroundColor: Color.fromARGB(255, 182, 218, 248),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/tuxedo.png",
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}

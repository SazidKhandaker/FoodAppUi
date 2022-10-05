import 'package:flutter/material.dart';

class Appfit extends StatelessWidget {
  final String featuredname;
  final bool isselected;
  final VoidCallback onclick;
  Appfit(
      {required this.featuredname,
      required this.isselected,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: onclick,
          child: Text(
            "$featuredname",
            style: TextStyle(
                color: isselected ? Colors.black : Colors.grey,
                fontSize: isselected ? 21 : 17,
                fontWeight: isselected ? FontWeight.bold : FontWeight.normal),
          ),
        ),
        SizedBox(
          width: 17,
        ),
      ],
    );
  }
}





// Row(
//       // ignore: prefer_const_literals_to_create_immutables
//       children: [
//         SizedBox(
//           width: 20,
//         ),
//         Text(
//           "FEATURED",
//           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           width: 17,
//         ),
//         Text(
//           "COMBO",
//           style: TextStyle(fontSize: 17, color: Colors.grey),
//         ),
//         SizedBox(
//           width: 17,
//         ),
//         Text(
//           "FAVORITES",
//           style: TextStyle(fontSize: 17, color: Colors.grey),
//         ),
//         SizedBox(
//           width: 17,
//         ),
//         Text(
//           "RECOMANDED",
//           style: TextStyle(fontSize: 17, color: Colors.grey),
//         ),
//         SizedBox(
//           width: 17,
//         ),
//         Text(
//           "HIGH RATED",
//           style: TextStyle(fontSize: 17, color: Colors.grey),
//         ),
//       ],
//     )
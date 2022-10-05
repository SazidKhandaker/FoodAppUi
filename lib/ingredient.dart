import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ingredients extends StatefulWidget {
  String chobi;
  String name;
  Ingredients({required this.chobi, required this.name});

  @override
  State<Ingredients> createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  bool isclick = false;
  fctn() {
    setState(() {
      if (isclick == false) {
        isclick = true;
      } else if (isclick == true) {
        isclick = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          fctn();
        },
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: isclick ? Color(0xffE57373) : Colors.white12,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "${widget.chobi}",
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${widget.name}",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

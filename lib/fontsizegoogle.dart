import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Googlefontsize extends StatelessWidget {
  var sizeoffont;
  Color clr;
  String text;
  Googlefontsize(
      {required this.sizeoffont, required this.clr, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: GoogleFonts.lobster(
        fontSize: sizeoffont,
        color: clr,
      ),
    );
  }
}

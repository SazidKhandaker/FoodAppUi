// ignore_for_file: prefer_const_constructors
import 'package:foodappui/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:foodappui/fontsizegoogle.dart';
import 'package:google_fonts/google_fonts.dart';

class Sigin extends StatefulWidget {
  const Sigin({super.key});

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: 700,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.red,
                      child: Center(
                        child: Googlefontsize(
                            sizeoffont: 40.0,
                            clr: Colors.white,
                            text: "Sign In"),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)),
                          hintText: "Name",
                          prefixIcon: Icon(Icons.people),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)),
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)),
                          hintText: "Confirm Password",
                          prefixIcon: Icon(Icons.password),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)),
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        _showMyDialog();
                      },
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xff757575), width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 70, 157, 148),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(180),
                                  )),
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.login_outlined,
                              color: Colors.redAccent,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.indigo,
          title: Googlefontsize(
              sizeoffont: 28.0, clr: Colors.black, text: "Sign In completed"),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Thank you for signin',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Done',
                style: TextStyle(
                    color: Color.fromARGB(255, 176, 86, 86), fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

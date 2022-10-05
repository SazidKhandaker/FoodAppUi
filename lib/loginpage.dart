import 'package:foodappui/Homepage.dart';
import 'package:foodappui/fontsizegoogle.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  color: Color(0xffE57373),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Googlefontsize(
                          sizeoffont: 38.0,
                          clr: Colors.black87,
                          text: "Log In"),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80),
                          topRight: Radius.circular(80),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 120,
                            width: 300,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 3),
                                blurRadius: 10,
                                color: Color.fromARGB(255, 159, 98, 70),
                              ),
                              BoxShadow(
                                  offset: Offset(-3, -3),
                                  blurRadius: 10,
                                  color: Color.fromARGB(255, 159, 98, 70)),
                            ]),
                            child: Column(children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.0)),
                                    hintText: "Email or User name",
                                    prefixIcon: Icon(Icons.email),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black38))),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.0)),
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.password),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black38))),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Container(
                              child: Text(
                                "Create account",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 103, 138, 167),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()),
                              );
                            },
                            child: Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff757575), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50),
                                          bottomLeft: Radius.circular(50),
                                          bottomRight: Radius.circular(180),
                                        )),
                                    child: Center(
                                      child: Text(
                                        "LOGIN",
                                        style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.login,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 25,
                            child: Text(
                              "Login with socail media",
                              style: TextStyle(
                                  color: Color(0xffD84315),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2, color: Colors.blue),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                bottomLeft: Radius.circular(50),
                                                bottomRight:
                                                    Radius.circular(180),
                                              )),
                                          child: Center(
                                            child: Text(
                                              "Facebook",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.blueAccent,
                                          size: 25,
                                        ),
                                      ],
                                    )),
                                Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2, color: Colors.green),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: Color(0xffA5D6A7),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                bottomLeft: Radius.circular(50),
                                                bottomRight:
                                                    Radius.circular(180),
                                              )),
                                          child: Center(
                                            child: Text(
                                              "Whatsapp",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.whatsapp,
                                          color: Colors.green,
                                          size: 25,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

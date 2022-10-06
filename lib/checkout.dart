// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:foodappui/fontsizegoogle.dart';

class Checkoutpage extends StatefulWidget {
  Checkoutpage({super.key});

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  int number = 0;
  int priceoffood = 0;
  fctn() {
    setState(() {
      number++;
    });
  }

  fctn2() {
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
            appBar: AppBar(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20.0),
              )),
              title: Googlefontsize(
                sizeoffont: 25.0,
                clr: Colors.black87,
                text: "Check Out ",
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                checkout("assets/burger.png", 250, "HameBurger", 60, 15),
                checkout("assets/Chicken.png", 150, "ChickenFry", 30, 10),
                checkout("assets/hotdog.png", 200, "HotDog", 50, 15),
                checkout("assets/Cakecombo.png", 280, "ChickenFry", 20, 15),
                checkout("assets/Combo2.png", 450, "BurgerCombo", 0, 15),
                checkout("assets/taco.png", 140, "Spicy Taco", 30, 15),
                checkout("assets/hotdog.png", 170, "Delicious hot dog", 40, 15),
                checkout("assets/popcorn.png", 120, "Pop corn", 30, 15),
                checkout("assets/pizza.png", 690, "SeaFood Pizza", 60, 15),
              ]),
            )));
  }

  checkout(
      String chobi, var dam, String foodname, var deliverycharge, var vattaka) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.deepPurple),
            color: Colors.white),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
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
                        "$chobi",
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$foodname",
                      style: GoogleFonts.abel(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Googlefontsize(
                      sizeoffont: 30.0, clr: Colors.black, text: "Quantity"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "$number",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.deepPurple),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          fctn2();
                        },
                        icon: Icon(Icons.horizontal_rule)),
                    IconButton(
                        onPressed: () {
                          fctn();
                        },
                        icon: Icon(Icons.add)),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, left: 8),
                  child: Googlefontsize(
                      sizeoffont: 30.0, clr: Colors.black, text: "Price"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "$dam",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  var price = dam * number;
                  var vat = vattaka / 100;
                  var vatamount = price * vat;

                  showModalBottomSheet(
                      context: context,
                      builder: ((BuildContext) {
                        return Container(
                          color: Colors.redAccent,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.food_bank_rounded,
                                        size: 50,
                                      ),
                                    ),
                                    Googlefontsize(
                                        sizeoffont: 28.0,
                                        clr: Colors.black87,
                                        text: "Food price is "),
                                    Text("$price taka",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.delivery_dining,
                                        size: 50,
                                      ),
                                    ),
                                    Googlefontsize(
                                        sizeoffont: 28.0,
                                        clr: Colors.black87,
                                        text: "Delivery Charge "),
                                    Text("$deliverycharge taka",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.calculate,
                                        size: 50,
                                      ),
                                    ),
                                    Googlefontsize(
                                        sizeoffont: 28.0,
                                        clr: Colors.black87,
                                        text: "Food vat is "),
                                    Text("${vatamount} taka",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(color: Colors.black87, thickness: 3.0),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.money,
                                        size: 55,
                                      ),
                                    ),
                                    Googlefontsize(
                                        sizeoffont: 28.0,
                                        clr: Colors.black87,
                                        text: "Total amount is "),
                                    Text(
                                        "${price + vatamount + deliverycharge} taka",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: GestureDetector(
                                  onTap: () {
                                    _showMyDialog();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff757575), width: 2),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 140,
                                          decoration: BoxDecoration(
                                              color: Color(0xff4DB6AC),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(50),
                                                bottomLeft: Radius.circular(50),
                                                bottomRight:
                                                    Radius.circular(180),
                                              )),
                                          child: Center(
                                            child: Text(
                                              "Buy Now",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.shopping_cart,
                                          color: Colors.green,
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Icon(
                    Icons.shopping_bag,
                    size: 50,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color.fromARGB(255, 135, 87, 83),
          title: Googlefontsize(
              sizeoffont: 30.0, clr: Colors.black54, text: "congralatution"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Your order has been placed',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Thank You',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.card_giftcard,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Done',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

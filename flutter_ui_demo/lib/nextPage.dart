import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/conts.dart';
import 'package:google_fonts/google_fonts.dart';

class EachChair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SafeArea(
          child: Container(
        decoration: BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: kPrimaryColor),
                ),
                Expanded(
                  child: Container(
                      height: 500,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: kTextLightColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Back",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ),
                                Icon(Icons.add_shopping_cart),
                              ],
                            ),
                          ),
                          Center(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 200,
                                  width: 200,
                                  margin: EdgeInsets.all(60),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Positioned(
                                  child: Image.asset(
                                    "images/Item_1.png",
                                    height: 350,
                                    width: 350,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 30, bottom: 10),
                                  child: Text(
                                    "\$52",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 30, bottom: 10),
                                  child: Text(
                                    "This is an armed chair, with all required comforts and liablitlities",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 170,
              margin: EdgeInsets.only(left: 40, right: 40, top: 20),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5), child: Icon(Icons.chat)),
                  Text(
                    "Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.notifications),
                  Text(
                    "Notify",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui_demo/nextPage.dart';
import 'conts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'modelclass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List l1 = [
    ModelClass(
        txt: "Classic Leather\n Arm Chair",
        img: AssetImage("images/Item_1.png")),
    ModelClass(
        txt: "Poppy Plastic \nTub Chair", img: AssetImage("images/Item_2.png")),
    ModelClass(txt: "Bat Stool Chair", img: AssetImage("images/Item_3.png")),
  ];

  List l2 = [
    ModelList(txt: "All"),
    ModelList(txt: "Sofa"),
    ModelList(txt: "Park bench"),
    ModelList(txt: "Armchair")
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: kPrimaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20, top: 10, right: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                child: Text(
                              "Dashboard",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                              // textAlign: TextAlign.left,
                            )),
                          ),
                          Container(
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                        ],
                      ),
                    )),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        ListView.builder(
                            itemCount: l2.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Container(
                                padding: EdgeInsets.only(
                                    top: 15, left: 20, right: 20),
                                child: Text(
                                  l2[i].txt,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                        ),
                      ),
                      ListView.builder(
                          itemCount: l1.length,
                          itemBuilder: (context, i) {
                            return Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EachChair()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    width: 400,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [kDefaultShadow],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        l1[i].txt,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 200,
                                  bottom: 30,
                                  child: Image(
                                    image: l1[i].img,
                                  ),
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

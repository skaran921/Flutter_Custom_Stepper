import 'package:custom_stepper/secondPage.dart';
import 'package:custom_stepper/third_page.dart';
import 'package:flutter/material.dart';

import 'final_page.dart';
import 'first_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeForm = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Stepper"),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50.0, left: 50),
                      width: width / 3.6,
                      height: 2.0,
                      decoration: BoxDecoration(
                          color: activeForm == 1 ||
                                  activeForm == 2 ||
                                  activeForm == 3
                              ? Colors.orange
                              : Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50.0,
                      ),
                      height: 2.0,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                          color: activeForm == 2 || activeForm == 3
                              ? Colors.orange
                              : Colors.black),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50.0,
                      ),
                      height: 2.0,
                      width: width / 4.0,
                      decoration: BoxDecoration(
                          color:
                              activeForm == 3 ? Colors.orange : Colors.black),
                    ),
                  ],
                ),
                Positioned(
                  top: 18,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor:
                        activeForm == 0 ? Colors.green : Colors.orange,
                    foregroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      "Step 1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: MediaQuery.of(context).size.width * 0.30,
                  child: CircleAvatar(
                    backgroundColor: activeForm == 0
                        ? Colors.black
                        : activeForm == 1 ? Colors.green : Colors.orange,
                    foregroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      "Step 2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: MediaQuery.of(context).size.width * 0.55,
                  child: CircleAvatar(
                    backgroundColor: activeForm == 2
                        ? Colors.green
                        : activeForm == 3 ? Colors.orange : Colors.black,
                    foregroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      "Step 3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 18,
                  right: 15,
                  child: CircleAvatar(
                    backgroundColor:
                        activeForm == 3 ? Colors.orange : Colors.black,
                    foregroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      "Step 4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            this.activeForm == 0
                ? FirstPage()
                : this.activeForm == 1
                    ? SecondPage()
                    : this.activeForm == 2 ? ThirdPage() : FinalPage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: activeForm == 0
                      ? null
                      : () {
                          if (activeForm == 1) {
                            setState(() {
                              activeForm = 0;
                            });
                          } else if (activeForm == 2) {
                            setState(() {
                              activeForm = 1;
                            });
                          } else if (activeForm == 3) {
                            setState(() {
                              activeForm = 2;
                            });
                          }
                        },
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10.0,
                ),
                activeForm == 3
                    ? FlatButton(
                        onPressed: () {
                          print("Submit");
                        },
                        child:
                            Text("Save", style: TextStyle(color: Colors.white)),
                        color: Colors.green,
                      )
                    : FlatButton(
                        onPressed: () {
                          if (activeForm == 0) {
                            setState(() {
                              activeForm = 1;
                            });
                          } else if (activeForm == 1) {
                            setState(() {
                              activeForm = 2;
                            });
                          } else if (activeForm == 2) {
                            setState(() {
                              activeForm = 3;
                            });
                          }
                        },
                        child:
                            Text("Next", style: TextStyle(color: Colors.white)),
                        color: Colors.indigo,
                      )
              ],
            )
          ],
        ));
  }
}

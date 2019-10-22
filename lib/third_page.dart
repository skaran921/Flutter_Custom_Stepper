import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(10.0),
      child: Card(
        elevation: 4.0,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Form 3", style: TextStyle(fontSize: 30.0)),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Father Name"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration:
                      InputDecoration(hintText: "Father's Mobile Number"),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

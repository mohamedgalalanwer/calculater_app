import 'package:flutter/material.dart';
import 'package:untitled/age.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStateCaluculaterApp();
  }
}

class MyStateCaluculaterApp extends State<MyApp> {
  int str = 0;
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calc App"),
        ),
        body: Container(
            // full screen color
            height: double.infinity,
            color: Colors.black12,
            // to scroll when write in InputTextField
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // to leave space between widget
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.cyanAccent,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          labelText: "Birth Year",
                          labelStyle:
                              TextStyle(fontSize: 30, color: Colors.red),
                          hintText: "Enter Your Birth Year",
                          hintStyle: TextStyle(
                              fontSize: 30, color: Colors.amberAccent),
                          prefixIcon: Icon(
                            Icons.support_agent,
                            color: Colors.blue,
                          )),
                      style: TextStyle(
                        color: Colors.pinkAccent,
                      ),
                      controller: myController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text(
                        "Get Value",
                        style: TextStyle(fontSize: 35),
                      ),
                      onPressed: () => setState(() {
                        AgeCalculater(int.parse(myController.text));
                        str = AgeCalculater.age;
                      }),
                      color: Colors.green,
                      textColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      "Your Age is $str years old",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            )),
      ),
    );
  }
}

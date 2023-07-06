import 'package:flutter/material.dart';

class choose_categolies_page extends StatefulWidget{
  @override
  _choose_categolies_page createState() => _choose_categolies_page();
}

class _choose_categolies_page extends State<choose_categolies_page>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter DropdownButton Example"),
        ),
      body: Center(
        child: MyDropdownButton(),
        ),
      ),
    );
  }
}

class MyDropdownButton extends StatefulWidget{
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownValue = '希望の職業を選んでください';
  //少し変更

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['希望の職業を選んでください', 'Option 2', 'Option 3', 'Option 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }






}
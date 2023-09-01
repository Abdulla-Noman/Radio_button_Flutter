import 'package:flutter/material.dart';
import 'package:radio_button/sliderpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value= 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Radio(value: 1, groupValue: _value, onChanged: (moening){
                setState(() {
                  _value=1;
                });
              }),
              Text('Doctor'),
            ],
          ),

          Row(
            children: [
              Radio(value: 2, groupValue: _value, onChanged: (moening){
                setState(() {
                  _value=2;
                });
              }),
              Text('Engineer'),
            ],
          ),

          Row(
            children: [
              Radio(value: 3, groupValue: _value, onChanged: (moening){
                setState(() {
                  _value=3;
                });
              }),
              Text('Police'),
            ],
          ),

          Row(
            children: [
              Radio(value: 4, groupValue: _value, onChanged: (moening){
                setState(() {
                  _value=4;
                });
              }),
              Text('Lawyer'),
            ],
          ),

          ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (cnx){return SliderPage();}));
                });
              },
              child: Text('Submit')
          )
        ],
      ),
    );
  }
}

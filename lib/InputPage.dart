// ignore_for_file: prefer_const_constructors

import 'package:charging_stations/SecondPage.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
 String dropdownvalue = 'Tamil Nadu'; 
 var items = [    
    'Tamil Nadu',
    'Kerala',
    'Karnataka',
    'Andhra',
    'Delhi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Station"),
        elevation: 2,
        shadowColor: Colors.white,
      ),

      body: Center(
        child: 
         Container(height: 300,width: 350,
         decoration: BoxDecoration(color: Color(0xFF1D1E33),borderRadius: BorderRadius.circular(10),
         ),
         child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Select State",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),              
              DropdownButton(
                underline:Container(),
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),                  
                items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage(cityName: dropdownvalue,))); } , child: Container( height: 25, width: 60, color: Colors.white,child: Center(child: const Text("Ok",style: TextStyle(color: Colors.black),)),)) 
           ],
          ),
        ),
      ),
      );
  }
}
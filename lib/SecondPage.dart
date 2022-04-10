// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class secondPage extends StatefulWidget {
  final String cityName;
  const secondPage({ Key? key, required this.cityName }) : super(key: key);
  static String id = 'second_screen';

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  
  @override
  void initState() {
    super.initState();
    readData();
  }
  List<DataRow> rows = [];

  void readData() async{
    String data = await rootBundle.loadString('assets/EV Stations.json');
    var jsonData = json.decode(data);
    for (var item in jsonData[widget.cityName]) {
      rows.add(
        DataRow(
          cells: [
            DataCell(Text("${item['city']}")),
            DataCell(Text("${item['name']}")),
            DataCell(Text("${item['available']}")),
            DataCell(Text("${item['currentType']}"))
          ]
        )
      );
    }
    setState(() {
      done = true;
    });
  }

  bool done = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charge Stations"),
      ),
      body: DataTable(
        columnSpacing: 10,
        columns: [
          DataColumn(label: Text("City",)),
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Available")),
          DataColumn(label: Text("Current")),
        ],
        rows: done ? rows : [],
      ),
    );
  }
}
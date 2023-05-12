import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_monitoria/monitor.dart';

import 'api.dart';
import 'detailpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monitoria',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: BuildListView() 
    );
  }
}

class BuildListView extends StatefulWidget{
  @override 
  State<StatefulWidget> createState() => _BuildListViewState();
}

class _BuildListViewState extends State{
  List<Monitor> monitores = <Monitor>[];

  _getMonitores(){
    API.getMonitores().then((response){
      setState(() {
        Iterable list = json.decode(response.body);
        monitores = list.map((model) => 
          Monitor.fromJson(model)).toList();
      });
    });
  }
  
  @override
  initState(){
    super.initState();

    _getMonitores();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monitores"),
      ),
      
      body: ListView.builder(
        itemCount: monitores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                monitores[index].nome,
                style: TextStyle (fontSize: 20.0, color: Colors.black)
              ),
            subtitle: Text(monitores[index].email),

            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailPage(monitores[index])
                )
              );
            },
          );
        },

      )
    );
  }
}

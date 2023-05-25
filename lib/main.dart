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
            visualDensity: VisualDensity(vertical:3),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 55.0,
                minHeight: 55.0,
                maxWidth: 55.0,
                maxHeight: 55.0
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(monitores[index].foto, fit: BoxFit.fill),
              )
            ),
            title: Text(
              monitores[index].nome,
              style: TextStyle (fontSize: 18.0, color: Colors.black)
            ),

            subtitle: Text (monitores[index].email),

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

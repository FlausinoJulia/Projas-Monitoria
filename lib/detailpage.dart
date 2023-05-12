import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_monitoria/monitor.dart';

class DetailPage extends StatelessWidget {
  final Monitor monitor;
  DetailPage(this.monitor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(monitor.nome),
      ),
      body: userDetail(),
    );
  }

  userDetail() {
    return Container(
      padding: new EdgeInsets.all(32.0),
      child: ListTile(
        title: Text(
          monitor.nome,
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),
        ),
        subtitle: Text(monitor.horarios),
        leading: Image.network(monitor.foto)
      ),
    );
  }
}
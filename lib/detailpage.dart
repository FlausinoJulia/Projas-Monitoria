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
    return Container (
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              
            )
            ClipRRect(
              
              borderRadius: BorderRadius.circular(200.0),
              child:  Image.network(
                monitor.foto,
                width: 148.0,
                height: 148.0,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Text(
              monitor.nome,
              style: TextStyle(
                color: Colors.deepPurple, 
                fontWeight: FontWeight.bold,
                fontSize: 19
              )
            ),
            SizedBox(height: 10),
            Text(monitor.curso),
            SizedBox(height: 20),
            Text("Horários"),
            SizedBox(height: 20),
            Text(monitor.horarios)
          ],
        ),
      )
    );
  }
}
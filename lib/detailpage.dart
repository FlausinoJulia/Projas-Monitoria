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
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child:  Image.network(
                  monitor.foto,
                  width: 140.0,
                  height: 140.0,
                  fit: BoxFit.fill,
                ),
              )
            ),
            Text(
              monitor.nome,
              style: TextStyle(
                color: Colors.deepPurple, 
                fontWeight: FontWeight.bold,
                fontSize: 19
              )
            ),
            SizedBox(height: 5),
            Text(monitor.curso),
            SizedBox(height: 20),
            Text("Horários"),
          ],
        ),
      ),
    );
  }
}
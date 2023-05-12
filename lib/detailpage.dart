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
    return Scaffold (
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child:  Image.network(
                monitor.foto,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 20),
            Text(monitor.nome),
            SizedBox(height: 20),
            Text("Horários"),
            SizedBox(height: 20),
            Text(monitor.horarios)
          ],
        )
      )
    );
  }
}
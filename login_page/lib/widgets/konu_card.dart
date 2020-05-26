import 'package:flutter/material.dart';
import 'package:loginpage/widgets/hightligting.dart';
import 'package:loginpage/button/Konu.dart';




class KonuCard extends StatelessWidget {
  final Konu konu;
  KonuCard({this.konu});
  get mainAxisAlignment => MainAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(konu.url),
              width: 30,
            ),
            Higth(
              color: Colors.blue.shade900,
              backgroundColor: Colors.blue.shade50,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text("ÖSYM bunları kesin soruyor"),
          ],
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';


class Pop extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          
          children: <Widget>[
             
            Text(
              "....'da Günün\nPopüler Konular",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

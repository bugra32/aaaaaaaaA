import 'package:flutter/material.dart';



class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Öne Çıkanlar",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
              textColor: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              splashColor: Colors.blueAccent,
              onPressed: () => Navigator.of(context).pushNamed("/sign"),
              child: Text(
                "Tümünü Gör",
                style: TextStyle(fontSize: 15.0,
                color: Colors.blue),
              ),
            )
          ],
        ),
      ],
    );
  }
}

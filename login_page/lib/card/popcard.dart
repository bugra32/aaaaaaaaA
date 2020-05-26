import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/widgets/hightligting.dart';

class PopCard extends StatelessWidget {
  get mainAxisAlignment => MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: rastgeleRenkUret(),
      child: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              
              height: 15.0,
            ),
            Icon(
              Icons.details,
              color: Colors.white,
              size: 19,
            ),
            SizedBox(
              height: 15.0,
            ),
            
            Higth(
              color: Colors.blue.shade900,
              backgroundColor: Colors.cyan.shade100,
            ),
            Text(
              "Rutin Olmayan Problemler",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

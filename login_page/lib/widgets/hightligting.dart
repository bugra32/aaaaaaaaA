import 'package:flutter/material.dart';
import 'dart:math'as matematik;
class Higth extends StatelessWidget {
  get alignment => Alignment.bottomLeft;
 
  final Color color;
  final Color backgroundColor;
  final Icon icon;
  final Text text;
  Higth({this.color,this.backgroundColor,this.icon,this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Matematik",
            style: TextStyle(
              color: rastgeleHigthLigtRenk(),
              backgroundColor: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
Color rastgeleRenkUret(){
  return Color.fromARGB(
    matematik.Random().nextInt(255), 
  matematik.Random().nextInt(255),
  matematik.Random().nextInt(255), 
  matematik.Random().nextInt(255));
}
Color rastgeleHigthLigtRenk(){
  return Color.fromRGBO(
  matematik.Random().nextInt(255),
  matematik.Random().nextInt(255),
  matematik.Random().nextInt(255),
   1.0);
}


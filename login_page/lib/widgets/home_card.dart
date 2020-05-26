import 'package:flutter/material.dart';
import 'package:loginpage/widgets/hightligting.dart';

class HomeCard extends StatelessWidget {
  get mainAxisAlignment => MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/images/Power.jpg",
            ),
            height: 72.0,
            width: 76.0,
          ),
          Higth(
            color: Colors.blue.shade900,
            backgroundColor: Colors.blue.shade50,
          ),
          
          SizedBox(
            height: 15.0,
          ),
          Text("ÖSYM bunları kesin soruyor"),
        ],
      
      ),
      
    );
  }
}
/*Image(
          image: AssetImage("assets/images/var.png"),
          height: 72.0,
          width: 70.0,
        ),*/

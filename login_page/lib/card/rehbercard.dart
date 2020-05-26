import 'package:flutter/material.dart';
import 'package:loginpage/widgets/hightligting.dart';

class RehberCard extends StatelessWidget {
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
            height: 4.0,
          ),
          Text("Online Eğitim Nasıl Olacak?"),
        ],
      ),
    );
  }
}

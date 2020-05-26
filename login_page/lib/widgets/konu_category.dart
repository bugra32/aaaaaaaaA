import 'package:flutter/material.dart';
import 'package:loginpage/widgets/konu.dart';

import 'package:loginpage/widgets/konu_card.dart';

final List <Konu>  konular= <Konu> [
  
];

class KonuCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(
        horizontal: 3.0,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return KonuCard();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loginpage/card/popcard.dart';
import 'package:loginpage/src/models/category_model.dart';

//Data
import '../src/data/category_data.dart';
//Model
import '../src/models/category_model.dart';

class PopCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(
        horizontal: 1.0,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          
          return PopCard();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:loginpage/src/models/category_model.dart';

import 'home_card.dart';
//Data
import '../src/data/category_data.dart';
//Model
import '../src/models/category_model.dart';

class HomeCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
        return  HomeCard();
          
          
        },
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:loginpage/category/pop_category.dart';
import 'package:loginpage/category/rehber_category.dart';
import 'package:loginpage/widgets/home_category.dart';
import 'package:loginpage/widgets/home_top_info.dart';
import 'package:loginpage/widgets/konu.dart';
import 'package:loginpage/widgets/konu_category.dart';
import 'package:loginpage/widgets/pop.dart';
import 'package:loginpage/widgets/rehberlik_top.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrintEndFrameBanner = false;
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme:
            IconThemeData(size: 30.0, color: Colors.white, opacity: 10.0),
        title: Text(
          "Ana Menü",
        ),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(Icons.supervised_user_circle // add custom icons also
              ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
              ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("home"),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.archive), title: Text("Arşiv")),
      ]),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 17.0,
          ),
          HomeTopInfo(),
          SizedBox(
            height: 10.0,
          ),
          HomeCategory(),
          SizedBox(
            height: 10.0,
          ),
          Pop(),
          SizedBox(
            height: 10.0,
          ),
          PopCategory(),
          SizedBox(
            height: 1.0,
          ),
          Konu(),
          SizedBox(
            height: 10.0,
          ),
          KonuCategory(),
          SizedBox(
            height: 1.0,
          ),
          Rehberlik(),
          SizedBox(
            height: 10.0,
          ),
          RehberCategory(),
          SizedBox(
            height: 2,
          ),
          //  Ders1(),
          SizedBox(
            height: 1,
          ),
          
          
        ],
      ),
    );
  }
}






















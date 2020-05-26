import 'package:flutter/material.dart';
import 'package:loginpage/widgets/hightligting.dart';

import 'widgets/home_top_info.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bugun"),
        actions: <Widget>[
          MaterialButton(
            minWidth: double.infinity,
            shape: StadiumBorder(),
            elevation: 0,
            color: Colors.blue,
            child: Text(
              "SıgIn",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () => Navigator.of(context).pushNamed("/home"),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          HomeTopInfo(),
          Higth(),
        ],
      ),
    );
  }
}

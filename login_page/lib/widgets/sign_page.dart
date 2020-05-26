import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                
                    
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "İsminiz",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.event_available),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                hintText: "Soy İsminiz",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 4.0),
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          MaterialButton(
            minWidth: double.infinity,
            shape: StadiumBorder(),
            elevation: 1,
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
    ));
  }
}

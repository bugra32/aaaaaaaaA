import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>[
  'Tarih                                                                                    ',
  'Coğrafya                                                                                 ',
  "Matematik                                                                                ",
  "Geometri                                                                                 ",
  "Fizik                                                                                      ",
  "Kimya                                                                                    ",
  "Biyoloji                                                                                 ",
  "Din Kültürü ve Ahlak Bilgisi                                                             ",
  "Felsefe                                                                                  ",
  "Türkçe                                                                                   ",
];

final List<int> colorCodes = <int>[600, 500, 100];

class DersCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: 0.0,
      height: 444.0,
      child: new ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new FlatButton(
              child: Text(
                entries[index],
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).pushNamed(
                  "/strings",
                  arguments: {},
                ); //argüman misal fizik le ilgili flutter send arguments to named route
              });
        },
      ),
    );
  }
}

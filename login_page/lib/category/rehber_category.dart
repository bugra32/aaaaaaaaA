import 'package:flutter/material.dart';
import 'package:loginpage/card/rehbercard.dart';







class RehberCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      height: 140,
      padding: EdgeInsets.symmetric(
        horizontal: 2.0,
      ),
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          
          return RehberCard();

          
        },
      
      ),
      
    );
  }
}
// class Dersler extends StatefulWidget {
//   @override
//   _DerslerState createState() => _DerslerState();
// }

// class _DerslerState extends State<Dersler> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView.builder(itemBuilder: Card(Build
//   'Tarih                                                                                    ',
//   'Coğrafya                                                                                 ',
//   "Matematik                                                                                ",
//   "Geometri                                                                                 ",
//   "Fizik                                                                                      ",
//   "Kimya                                                                                    ",
//   "Biyoloji                                                                                 ",
//   "Din Kültürü ve Ahlak Bilgisi                                                             ",
//   "Felsefe                                                                                  ",
//   "Türkçe                                                                                   ",
//       )),
      
//     );
//   }
// }

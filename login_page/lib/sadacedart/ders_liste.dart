// import 'package:flutter/material.dart';
// import 'package:loginpage/card/derscard.dart';
// import 'package:loginpage/sadacedart/ders.dart';
// import 'package:loginpage/sadacedart/utils/strings.dart';




// class DersListesi extends StatelessWidget {
//   static List<Ders> tumDersler;

//   @override
//   Widget build(BuildContext context) {
//     tumDersler = veriKaynaginiHazirla();

//     return Scaffold(
     
//       body: listeyiHazirla(),
//     );
//   }

//   List<Ders> veriKaynaginiHazirla() {
//     List<Ders> dersler = [];

//     for (int i = 0; i < 9; i++ ) {
     

//       Ders eklenecekDers = Ders(
//           Strings.DERS_ADLARI[i],
//           Strings.DERS_GENEL_OZELLIKLERI[i],
          
//          );
//       dersler.add(eklenecekDers);
//     }

//     return dersler;
//   }

//   Widget listeyiHazirla() {
//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index) {
//         return tekSatirDers(context, index);
//       },
//       itemCount: tumDersler.length,
//     );
//   }

//   Widget tekSatirDers(BuildContext context, int index) {
//     Ders dersler = tumDersler[index];

//     return Card(
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(0.0),
//         child: ListTile(
//           onTap: ()=> Navigator.pushNamed(context, "null"),
//           //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BurcDetay())),
          
//           title: Text(
//             dersler.dersAdi,
//             style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.pink.shade500),
//           ),
          
//           trailing: Icon(Icons.arrow_forward_ios, color:Colors.pink),
//         ),
//       ),
//     );
//   }
// }



// // body: Container(
      
// //         decoration: BoxDecoration(),
// //         width: 0.0,
// //         height: 444.0,
// //         child: new ListView.builder(
// //           itemCount: entries.length,
// //           itemBuilder: (BuildContext ctxt, int index) {
// //             return new FlatButton(
// //                 child: Text(
// //                   entries[index],
// //                   style: TextStyle(
// //                     fontSize: 17,
// //                   ),
// //                 ),
// //                 onPressed: () {
// //                   //argüman misal fizik le ilgili flutter send arguments to named route
// //                 });
// //           },
// //         ),
// //       ),

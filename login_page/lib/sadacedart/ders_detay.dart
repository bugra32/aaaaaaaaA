// import 'package:flutter/material.dart';
// import 'package:loginpage/sadacedart/ders.dart';
// import 'package:palette_generator/palette_generator.dart';

// import 'ders_liste.dart';



// class DersDetay extends StatelessWidget {
//   int gelenIndex;

//   DersDetay(this.gelenIndex);

//   @override
//   DersDetayState getState() {
//     return new DersDetayState();
//       }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return null;
//   }
//     }
    
//     class DersDetayState {
// }

// // class BurcDetayState extends State<DersDetay> {
// //   Ders secilenBurc;
// //   Color baskinRenk;
// //   PaletteGenerator paletteGenerator;

// //   @override
// //   void initState() {
// //     super.initState();
// //     secilenBurc = DersListesi.tumDersler[widget.gelenIndex];
// //     baskinRengiBul();
// //   }

//   // void baskinRengiBul() {
//   //   Future<PaletteGenerator> fPaletGenerator =
//   //       PaletteGenerator.fromImageProvider(
//   //         null  );
//   //   fPaletGenerator.then((value) {
//   //     paletteGenerator = value;
//   //     debugPrint(
//   //         "secilen renk :" + paletteGenerator.dominantColor.color.toString());

//   //     setState(() {
//   //       baskinRenk = paletteGenerator.vibrantColor.color;
//   //     });
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {

//     var secilenDers;
//         return Scaffold(
//           primary: true,
//           body: CustomScrollView(
//             slivers: <Widget>[
//               SliverAppBar(
//                 expandedHeight: 250,
//                 pinned: true,
               
               
//               ),
//               SliverToBoxAdapter(
//                 child: Container(
//                   margin: EdgeInsets.all(8),
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.pink.shade50,
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Text(secilenDers.dersDetayi,
//                     style: TextStyle(fontSize: 18, color: Colors.black)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

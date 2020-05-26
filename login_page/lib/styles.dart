import 'package:flutter/material.dart';
import 'package:loginpage/widgets/const.dart';

class KStyles{

   KStyles._();

   static const TextStyle link = TextStyle(color: KColors.link,fontSize: 13); 

   static const InputDecoration borderedInput = InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(226, 230, 234, 1),
          width: 0.3
        )),
   ); 

   static const elevationShadow = [ 
     BoxShadow(
       color: Color.fromRGBO(0, 0, 0, 0.08),
       blurRadius: 4,
       spreadRadius: 2,
       offset: Offset(0, 8)
       )
     ];     

}
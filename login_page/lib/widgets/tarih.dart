import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


final List<String> entries = <String>[
  'Tarih Bilimi                                                                                    ',
  'Uygarlığın Doğuşu ve İlk Uygarlıklar                                                                                 ',
  "İlk Türk Devletleri                                                                                ",
  "İslam Tarihi ve Uygarlığı(13.Yüzyıla kadar)                                                                                 ",
  "Türk-İslam Devletleri (10-13.Yüzyılları)                                                                                      ",
  "Ortaçağ'da Avrupa                                                                                    ",
  "Türkiye Tarihi(11-13.Yüzyıllar)                                                                                 ",
  "Beylikten Devlete (1300-1453)                                                             ",
  "Dünya Gücü: Osmanlı Devleti(1453-1600)                                                                                  ",
  "Yeniçağ ve Yakınçağ'da Avrupa                                                                                   ",
  "Osmanlı'da Arayış Yılları (1600-1700)                                                                                   ",
  "XVIII. Yüzyulda Değişim ve Diplomasi                                                                                   ",
  "En Uzun Yüzyıl (1800-1922)                                                                                   ",
  "Osmanlı Devleti'nin Kültür Medeniyeti                                                                                   ",
  "Trablusgarp Savaşı ve Balkan Savaşları                                                                                   ",
  "I.Dünya Savaşı ve Sonrası Gelişmeler                                                                                   ",
  "Kurtuluş Savaşı Hazırlık Dönemi                                                                                    ",
  "TBMM'nin Açılması ve Ayaklanmaları                                                                                   ",
  "Kurtuluş Savaşı'nda Cepheler ve Antlaşmalar                                                                                   ",
  "Cumhuriyet Dönemi İnklapları                                                                                   ",
  "Atatürk'çü Düşünce Sistemi ve Atatürkçülük                                                                                    ",
  "Atatürk Dönemi Türk Dış Politikası                                                                                   ",
  "Çok Partili hayata Geçiş                                                                                   ",
  "II.Dünya Savaşı (1939-1945)                                                                                   ",
  "Soğuk Savaş Dönemi                                                                                   ",
  "Küreselleşen Dünya                                                                                   ",
  "Yönetim Biçimleri                                                                                    ",
];

final List<int> colorCodes = <int>[600, 500, 100];

class Tarih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tarih",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: new ListView.builder(
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
                  "/sign",
                  arguments: {},
                ); //argüman misal fizik le ilgili flutter send arguments to named route
              });
        },
      ),
    );
  }
}

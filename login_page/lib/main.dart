import 'package:flutter/material.dart';
import 'package:loginpage/anasayfa.dart';
import 'package:loginpage/src/homescreen.dart';
import 'package:loginpage/widgets/sign_page.dart';
import 'package:loginpage/widgets/tarih.dart';
import 'package:loginpage/widgets/const.dart';
import 'package:loginpage/SocialLogin.dart';
import 'package:loginpage/styles.dart';

import 'appBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => Home(),
        "/sign": (context) => Sign(),
        "/homescreen": (context) => HomeScreen(),
        "/tarih": (context) => Tarih(),

      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool rememberMeValue;

  @override
  void initState() {
     rememberMeValue = true;
  }

  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(color: KColors.lightGrey,fontSize: 13);
    final buttonStyle  = TextStyle(color: KColors.darkGrey);

    final socialLogin = Row(
      children: <Widget>[
        SizedBox(width: 20),
        Flexible(
          child: FacebookLoginButton(
            onPressed: (){},
          )
        ),
        SizedBox(width: 20),
        Flexible(
          child: GoogleLoginButton(
            onPressed: (){}
          )
        ),
        SizedBox(width: 20)
      ],
    );

    final emailInputDecoration = KStyles.borderedInput.copyWith(hintText: "Email");

    final passwordInputDecoration = KStyles.borderedInput.copyWith(hintText: "Password");

    final rememberMe =
    FlatButton(
      padding: EdgeInsets.all(0),
      child:
    Row(
      children: <Widget>[
        Checkbox(
          value: rememberMeValue,
          onChanged: (val){setState(() {
            rememberMeValue = val;
          });},
        ),
        Text("Remember Me",style: buttonStyle)
      ],
    ),
    onPressed:(){setState(() {
            rememberMeValue = !rememberMeValue;
          });},
    );

    final forgetPassword = FlatButton(child: Text("Sifreni mi unuttun ?",style: buttonStyle),onPressed: (){
      Navigator.of(context).pushNamed("forgetPassword");
    });

    final loginButton = MaterialButton(
      onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil('baseScreen', ModalRoute.withName("baseScreen")); },
      color: Colors.red,
      minWidth: double.infinity,
      height: 60,
      child: FlatButton(child: Text('GIRIS YAP',style: TextStyle(color: Colors.white)), onPressed: () {
        Navigator.of(context).pushNamed("/home");
      },),
    );

    final noAccount = FlatButton(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Hesabin Yok Mu ? ', style: textStyle),
            TextSpan(text: 'Kayit Ol', style: textStyle.copyWith(color: KColors.link))
          ]
        ),
      ),
      onPressed: (){
        Navigator.of(context).pushReplacementNamed("register");
      },
    );

    return Scaffold(
      appBar: CircularAppBar(title: 'Giris Yap'),
      body:
      SingleChildScrollView(
        child:
        Padding(
        padding: EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: <Widget>[
            Text('Sosyal Medya Hesapları ile Giriş Yapabilirsiniz',style: textStyle),
            SizedBox(height: 30),
            socialLogin,
            SizedBox(height: 30),
            Text('veya email ve şifrenizi girerek',style: textStyle),
            SizedBox(height: 30),
            TextField(decoration: emailInputDecoration),
            SizedBox(height: 10),
            TextField(decoration: passwordInputDecoration),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                rememberMe,
                Flexible(child: Container()),
                forgetPassword
              ],
            ),
            SizedBox(height: 10),
            loginButton,
            SizedBox(height: 10),
            noAccount
          ],
        ),
      )
      )
      ,
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:loginpage/anasayfa.dart';
// import 'package:loginpage/src/homescreen.dart';
// import 'package:loginpage/widgets/sign_page.dart';
// import 'package:loginpage/widgets/tarih.dart';
// import 'package:loginpage/widgets/const.dart';
// import 'package:loginpage/SocialLogin.dart';
// import 'package:loginpage/styles.dart';
// import 'appBar.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => LoginScreen(),
//         "/home": (context) => Home(),
//         "/sign": (context) => Sign(),
//         "/homescreen": (context) => HomeScreen(),
//         "/tarih": (context) => Tarih(),
//       }
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
 
//   bool rememberMeValue;

//   @override
//   void initState() {
//     rememberMeValue = true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final textStyle = TextStyle(color: KColors.lightGrey, fontSize: 13);
//     final buttonStyle = TextStyle(color: KColors.darkGrey);

//     final socialLogin = Row(
//       children: <Widget>[
//         SizedBox(width: 20),
//         Flexible(
//             child: FacebookLoginButton(
//           onPressed: () {},
//         )),
//         SizedBox(width: 20),
//         Flexible(child: GoogleLoginButton(onPressed: () {})),
//         SizedBox(width: 20)
//       ],
//     );
//     final emailInputDecoration =
//         KStyles.borderedInput.copyWith(hintText: "Email");
//     final passwordInputDecoration =
//         KStyles.borderedInput.copyWith(hintText: "Password");
//     final rememberMe = FlatButton(
//       padding: EdgeInsets.all(0),
//       child: Row(
//         children: <Widget>[
//           Checkbox(
//             value: rememberMeValue,
//             onChanged: (val) {
//               setState(() {
//                 rememberMeValue = val;
//               });
//             },
//           ),
//           Text("Remember Me", style: buttonStyle)
//         ],
//       ),
//       onPressed: () {
//         setState(() {
//           rememberMeValue = !rememberMeValue;
//         });
//       },
//     );
//     final forgetPassword = FlatButton(
//         child: Text("Sifreni mi unuttun ?", style: buttonStyle),
//         onPressed: () {
//           Navigator.of(context).pushNamed("forgetPassword");
//         });
//     final loginButton = MaterialButton(
//       onPressed: () {
//         Navigator.of(context).pushNamedAndRemoveUntil(
//             'baseScreen', ModalRoute.withName("baseScreen"));
//       },
//       color: Colors.red,
//       minWidth: double.infinity,
//       height: 60,
//       child: FlatButton(
//         child: Text('GIRIS YAP', style: TextStyle(color: Colors.white)),
//         onPressed: () {
//           Navigator.of(context).pushNamed("/home");
//         },
//       ),
//     );
//     final noAccount = FlatButton(
//       child: RichText(
//         text: TextSpan(children: [
//           TextSpan(text: 'Hesabın Yok Mu ? ', style: textStyle),
//           TextSpan(
//               text: 'Kayıt Ol', style: textStyle.copyWith(color: KColors.link))
//         ]),
//       ),
//       onPressed: () {
//         Navigator.of(context).pushReplacementNamed("register");
//       },
//     );
//     return Scaffold(
//       appBar: CircularAppBar(title: 'Giriş Yap'),
//       body: SingleChildScrollView(
//           child: Padding(
//         padding: EdgeInsets.only(right: 20, left: 20),
//         child: Column(
//           children: <Widget>[
//             Text('Sosyal Medya Hesapları ile Giriş Yapabilirsiniz',
//                 style: textStyle),
//             SizedBox(height: 30),
//             socialLogin,
//             SizedBox(height: 30),
//             Text('veya email ve şifrenizi girerek', style: textStyle),
//             SizedBox(height: 30),
//             TextField(decoration: emailInputDecoration),
//             SizedBox(height: 10),
//             TextField(decoration: passwordInputDecoration),
//             SizedBox(height: 10),
//             Row(
//               children: <Widget>[
//                 rememberMe,
//                 Flexible(child: Container()),
//                 forgetPassword
//               ],
//             ),
//             SizedBox(height: 10),
//             loginButton,
//             SizedBox(height: 10),
//             noAccount
//           ],
//         ),
//       )),
//     );
//   }
// }
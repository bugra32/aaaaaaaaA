import 'package:flutter/material.dart';
import 'package:loginpage/widgets/const.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SocialLoginButton extends StatelessWidget {

  final Function onPressed;
  final IconData icon;
  final Color color;
  final String name;

  SocialLoginButton({this.onPressed,this.icon,this.name,this.color}) : super();
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const StadiumBorder(),
      fillColor: Colors.white,
      splashColor: Colors.grey,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(2),child:Icon(icon,color:color)),
            Padding(padding: EdgeInsets.all(2),child:Text(name)),
          ],
        ),
      ),
    );
  }
}

class FacebookLoginButton extends StatelessWidget {
  
  final Function onPressed;

  FacebookLoginButton({this.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    return SocialLoginButton(
          color: KColors.facebook,
          icon: MdiIcons.facebook,
          name: 'Facebook',
          onPressed: onPressed,
    );
  }
}

class GoogleLoginButton extends StatelessWidget {

  final Function onPressed;

  GoogleLoginButton({this.onPressed}) : super();

  @override
  Widget build(BuildContext context) {
    return SocialLoginButton(
            color: KColors.google,
            icon: MdiIcons.google,
            name: 'Google',
            onPressed: onPressed,
        );
  }
}
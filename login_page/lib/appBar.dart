import 'package:flutter/material.dart';

class CircularAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  CircularAppBar({this.title}) : preferredSize = Size(null, 150);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500);

    final backbutton = Padding(
        padding: EdgeInsets.only(right: 10),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ));

    final navigatorAwareBackButton =
        Navigator.of(context).canPop() ? backbutton : Container();

    return ClipPath(
        clipper: BottomClipper(),
        child: Container(
          color: Theme.of(context).accentColor,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: FractionallySizedBox(
            heightFactor: 0.5,
            child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(children: <Widget>[
                  navigatorAwareBackButton,
                  Text(title, style: textStyle)
                ])),
          ),
        ));
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final start = size.height * 0.6;
    final end = size.height * 0.4;

    var path = Path();
    path.lineTo(0.0, start);

    var firstControlPoint = Offset(size.width * 0.4, size.height);
    var firstEndPoint = Offset(size.width, end);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, end);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

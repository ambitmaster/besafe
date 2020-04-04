import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 50,
        child: Image.asset(
            'logo-g.png',
            color: Colors.white,
            colorBlendMode: BlendMode.darken
            )
    );
  }
}

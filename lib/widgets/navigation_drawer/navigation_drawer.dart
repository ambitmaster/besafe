import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';
import 'package:the_basics/routing/route_names.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Hem',Icons.home,HomeRoute),
          DrawerItem('Om Oss',Icons.fingerprint,AboutRoute),
          DrawerItem('Tjänster',Icons.extension,ServiceRoute)
        ]
      )
    );
  }
}
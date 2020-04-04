import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routename){
    return navigatorKey.currentState.pushNamed(routename);
  }

  void goBack(){
    return navigatorKey.currentState.pop();
  }

}
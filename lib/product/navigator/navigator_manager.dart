import 'package:flutter/cupertino.dart';

import 'navigator_routes.dart';

//SİNGELTON BİR KULLANIM

class NavigatorManager {
  NavigatorManager._();
  static NavigatorManager instance = NavigatorManager._();
  final GlobalKey<NavigatorState> _navigatorGlobalKey = GlobalKey();

  GlobalKey<NavigatorState> get navigatorGlobalKey => _navigatorGlobalKey;

  Future<void> pushToPage(NavigateRoutes route, {Object? arguments}) async {
    await _navigatorGlobalKey.currentState
        ?.pushNamed(route.withParaf, arguments: arguments);
  }
}

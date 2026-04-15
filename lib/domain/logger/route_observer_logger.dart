import 'package:flutter/material.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';

class RouteObserverLogger extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    switch (route) {
      case DialogRoute():
        break;
      case MaterialPageRoute():
      default:
        logger.info(
          "Navigating to screen: ${route.settings.name}",
          details: {
            'from_route': previousRoute?.settings.name,
            "to_route": route.settings.name,
          },
          context: "RouteNavigation",
        );
        break;
    }
  }

  String? _getRouteName(MaterialPageRoute route) => route.settings.name;

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    switch (route) {
      case DialogRoute():
        break;
      case MaterialPageRoute():
      default:
        logger.info(
          "Navigating back to page route \"${previousRoute?.settings.name}",
        );
        break;
    }
  }
}

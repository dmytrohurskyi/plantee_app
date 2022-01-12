import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/store_screen/store_screen_connector.dart';

class AppRouter {
  static const String root = '/'; // StoreScreen for now
  static const String cartScreen = '/cart';
  static const String ordersScreen = '/orders';

  Route? onGenerateRoute(RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
      case root:
        builder = (BuildContext context) => const StoreScreenConnector();
        break;
      case cartScreen:
        builder = (BuildContext context) => const Center(
              child: Text('Cart Screen'),
            );
        break;
      case ordersScreen:
        builder = (BuildContext context) => const Center(
              child: Text('Orders Screen'),
            );
        break;
      default:
        throw Exception('Invalid route: ${settings.name}');
    }
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}

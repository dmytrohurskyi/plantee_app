import 'package:flutter/material.dart';
import 'package:plantee_app/redux/store_screen/store_screen_connector.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => const StoreScreenConnector(),
};

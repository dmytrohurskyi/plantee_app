import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/store.dart';
import 'package:plantee_app/routes.dart';

void main() {
  runApp(StoreProvider<AppState>(
    child: const PlanteeApp(),
    store: createStore(),
  ));
}

class PlanteeApp extends StatelessWidget {
  static final navKey = GlobalKey<NavigatorState>();

  const PlanteeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plantee',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: routes,
      initialRoute: '/',
    );
  }
}

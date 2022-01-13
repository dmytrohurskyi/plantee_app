import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/app_router.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_connector.dart';
import 'package:plantee_app/redux/store.dart';
import 'package:plantee_app/redux/store_screen/side_menu/side_menu_connector.dart';

void main() async {
  // Firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        drawer: const SidemenuConnector(),
        bottomNavigationBar: const BottomNavBarWidgetConnector(),
        body: Navigator(
          key: navKey,
          initialRoute: AppRouter.root,
          onGenerateRoute: (RouteSettings settings) =>
              AppRouter().onGenerateRoute(settings),
        ),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_connector.dart';
import 'package:plantee_app/redux/store.dart';
import 'package:plantee_app/redux/store_screen/side_menu/side_menu_connector.dart';
import 'package:plantee_app/redux/store_screen/store_screen_connector.dart';

void main() async{
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
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder =
                    (BuildContext context) => const StoreScreenConnector();
                break;
              case '/cart':
                builder = (BuildContext context) => const Center(
                      child: Text('Cart Screen'),
                    );
                break;
              case '/orders':
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
          },
        ),
      ),
    );
  }
}

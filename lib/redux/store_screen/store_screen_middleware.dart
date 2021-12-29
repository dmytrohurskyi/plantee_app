import 'package:plantee_app/redux/app/app_state.dart';
import 'package:redux/redux.dart';

class StoreScreenMiddleware extends MiddlewareClass<AppState> {

  StoreScreenMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    /*switch (action.runtimeType) {
      case HomeScreenGetWeatherAction:
        _fetchWeather(store);
        break;
      default:
        break;
    }*/
  }

}
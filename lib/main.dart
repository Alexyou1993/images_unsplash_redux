import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:images_unsplash_redux/src/actions/get_images.dart';
import 'package:images_unsplash_redux/src/data/unsplah.api.dart';
import 'package:images_unsplash_redux/src/middleware/app_middleware.dart';
import 'package:images_unsplash_redux/src/models/index.dart';
import 'package:images_unsplash_redux/src/presentation/home_page.dart';
import 'package:redux/redux.dart';

import 'src/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final YtsApi api = YtsApi(client: client);
  final AppMiddleware appMiddleware = AppMiddleware(ytsApi: api);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: appMiddleware.middleware,
  );
  store.dispatch(const GetImages());
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        title: 'Images',
        home: HomePage(),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:images_unsplash_redux/src/actions/get_images.dart';
import 'package:images_unsplash_redux/src/data/unsplah.api.dart';
import 'package:images_unsplash_redux/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getImagesMiddleware,
    ];
  }

  Future<void> _getImagesMiddleware(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is! GetImages) {
      return;
    }
    try {
      final List<Images> images = await _ytsApi.getImages();
      final GetImagesSuccessful successful = GetImagesSuccessful(images);
      store.dispatch(successful);
    } catch (e) {
      final GetImagesError error = GetImagesError(e);
      store.dispatch(error);
    }
  }
}

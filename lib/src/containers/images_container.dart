import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:images_unsplash_redux/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<List<Images>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Images>>(
      converter: (Store<AppState> store) => store.state.images.asList(),
      builder: builder,
    );
  }
}

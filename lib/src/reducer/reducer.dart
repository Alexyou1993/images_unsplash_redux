import 'package:images_unsplash_redux/src/actions/get_images.dart';
import 'package:images_unsplash_redux/src/models/index.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is GetImagesSuccessful) {
    final AppStateBuilder builder = state.toBuilder();
    builder.images.addAll(action.images);
    return builder.build();
  }
  return state;
}

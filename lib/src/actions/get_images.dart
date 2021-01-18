import 'package:images_unsplash_redux/src/models/index.dart';

class GetImages {
  const GetImages();
}

class GetImagesSuccessful {
  const GetImagesSuccessful(this.images);

  final List<Images> images;
}

class GetImagesError {
  GetImagesError(this.error);

  final dynamic error;
}

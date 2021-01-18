part of models;


abstract class Images implements Built<Images, ImagesBuilder> {
  factory Images([void Function(ImagesBuilder) updates]) = _$Images;
  factory Images.fromJson(dynamic json) {
     return serializers.deserializeWith(serializer, json);
   }

  Images._();


  @BuiltValueField(wireName: 'alt_description')
  @nullable
  String get altDescription;

  Urls get urls;

  Users get user;

  int get likes;

  static Serializer<Images> get serializer => _$imagesSerializer;
}


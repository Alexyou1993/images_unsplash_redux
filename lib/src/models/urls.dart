part of models;

abstract class Urls implements Built<Urls, UrlsBuilder> {
  factory Urls([void Function(UrlsBuilder) updates]) = _$Urls;
  factory Urls.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Urls._();

  String get small;

  String get regular;

  static Serializer<Urls> get serializer => _$urlsSerializer;

}
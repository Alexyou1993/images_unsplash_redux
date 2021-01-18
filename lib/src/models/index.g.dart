// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Images> _$imagesSerializer = new _$ImagesSerializer();
Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();
Serializer<Users> _$usersSerializer = new _$UsersSerializer();

class _$ImagesSerializer implements StructuredSerializer<Images> {
  @override
  final Iterable<Type> types = const [Images, _$Images];
  @override
  final String wireName = 'Images';

  @override
  Iterable<Object> serialize(Serializers serializers, Images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'urls',
      serializers.serialize(object.urls, specifiedType: const FullType(Urls)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(Users)),
      'likes',
      serializers.serialize(object.likes, specifiedType: const FullType(int)),
    ];
    if (object.altDescription != null) {
      result
        ..add('alt_description')
        ..add(serializers.serialize(object.altDescription,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Images deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'alt_description':
          result.altDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(Urls)) as Urls);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(Users)) as Users);
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object> serialize(Serializers serializers, Urls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersSerializer implements StructuredSerializer<Users> {
  @override
  final Iterable<Type> types = const [Users, _$Users];
  @override
  final String wireName = 'Users';

  @override
  Iterable<Object> serialize(Serializers serializers, Users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Users deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Images extends Images {
  @override
  final String altDescription;
  @override
  final Urls urls;
  @override
  final Users user;
  @override
  final int likes;

  factory _$Images([void Function(ImagesBuilder) updates]) =>
      (new ImagesBuilder()..update(updates)).build();

  _$Images._({this.altDescription, this.urls, this.user, this.likes})
      : super._() {
    if (urls == null) {
      throw new BuiltValueNullFieldError('Images', 'urls');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('Images', 'user');
    }
    if (likes == null) {
      throw new BuiltValueNullFieldError('Images', 'likes');
    }
  }

  @override
  Images rebuild(void Function(ImagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesBuilder toBuilder() => new ImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Images &&
        altDescription == other.altDescription &&
        urls == other.urls &&
        user == other.user &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, altDescription.hashCode), urls.hashCode), user.hashCode),
        likes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Images')
          ..add('altDescription', altDescription)
          ..add('urls', urls)
          ..add('user', user)
          ..add('likes', likes))
        .toString();
  }
}

class ImagesBuilder implements Builder<Images, ImagesBuilder> {
  _$Images _$v;

  String _altDescription;
  String get altDescription => _$this._altDescription;
  set altDescription(String altDescription) =>
      _$this._altDescription = altDescription;

  UrlsBuilder _urls;
  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();
  set urls(UrlsBuilder urls) => _$this._urls = urls;

  UsersBuilder _user;
  UsersBuilder get user => _$this._user ??= new UsersBuilder();
  set user(UsersBuilder user) => _$this._user = user;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  ImagesBuilder();

  ImagesBuilder get _$this {
    if (_$v != null) {
      _altDescription = _$v.altDescription;
      _urls = _$v.urls?.toBuilder();
      _user = _$v.user?.toBuilder();
      _likes = _$v.likes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Images other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Images;
  }

  @override
  void update(void Function(ImagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Images build() {
    _$Images _$result;
    try {
      _$result = _$v ??
          new _$Images._(
              altDescription: altDescription,
              urls: urls.build(),
              user: user.build(),
              likes: likes);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Images', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Urls extends Urls {
  @override
  final String small;
  @override
  final String regular;

  factory _$Urls([void Function(UrlsBuilder) updates]) =>
      (new UrlsBuilder()..update(updates)).build();

  _$Urls._({this.small, this.regular}) : super._() {
    if (small == null) {
      throw new BuiltValueNullFieldError('Urls', 'small');
    }
    if (regular == null) {
      throw new BuiltValueNullFieldError('Urls', 'regular');
    }
  }

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls && small == other.small && regular == other.regular;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, small.hashCode), regular.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Urls')
          ..add('small', small)
          ..add('regular', regular))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls _$v;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  String _regular;
  String get regular => _$this._regular;
  set regular(String regular) => _$this._regular = regular;

  UrlsBuilder();

  UrlsBuilder get _$this {
    if (_$v != null) {
      _small = _$v.small;
      _regular = _$v.regular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Urls build() {
    final _$result = _$v ?? new _$Urls._(small: small, regular: regular);
    replace(_$result);
    return _$result;
  }
}

class _$Users extends Users {
  @override
  final String name;

  factory _$Users([void Function(UsersBuilder) updates]) =>
      (new UsersBuilder()..update(updates)).build();

  _$Users._({this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Users', 'name');
    }
  }

  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => new UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Users')..add('name', name)).toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  UsersBuilder();

  UsersBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Users build() {
    final _$result = _$v ?? new _$Users._(name: name);
    replace(_$result);
    return _$result;
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Images> images;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.images}) : super._() {
    if (images == null) {
      throw new BuiltValueNullFieldError('AppState', 'images');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc(0, images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')..add('images', images))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Images> _images;
  ListBuilder<Images> get images =>
      _$this._images ??= new ListBuilder<Images>();
  set images(ListBuilder<Images> images) => _$this._images = images;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _images = _$v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(images: images.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

part of models;

abstract class Users implements Built<Users, UsersBuilder> {
  factory Users([void Function(UsersBuilder) updates]) = _$Users;

  Users._();

  String get name;

  static Serializer<Users> get serializer => _$usersSerializer;
}


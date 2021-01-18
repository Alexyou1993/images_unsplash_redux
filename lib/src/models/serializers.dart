library serializers.dart;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Images,
  Urls,
  Users,
])
Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

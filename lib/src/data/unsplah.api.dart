import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:images_unsplash_redux/src/models/index.dart';
import 'package:meta/meta.dart';

class YtsApi {
  YtsApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Images>> getImages() async {

    final Response response = await _client.get(
        'https://api.unsplash.com/photos/?page=3&client_id=6-QR8X75ca7jwPtlodFKS2jubdsOTxAzMPzAUBqZ1U0');
    final List<dynamic> jsonData = jsonDecode(response.body) as List<dynamic>;
    return jsonData.map((dynamic json) => Images.fromJson(json)).toList();
  }
}

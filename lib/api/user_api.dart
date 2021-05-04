import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:prueba_json/user/model/user.dart';

class UserApi {
  static Future<List<User>> getUserlocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/user.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}

import 'package:flutter/material.dart';

class User {
  final String id;
  final String names;
  final String lastNames;
  final String email;
  final String address;
  final String phone;
  final String password;
  final String createdAt;
  final String updatedAt;

  User(
      {Key key,
      @required this.id,
      @required this.names,
      @required this.lastNames,
      this.email,
      this.address,
      this.phone,
      this.password,
      this.createdAt,
      this.updatedAt});

  static User fromJson(json) => User(
        id: json['id'],
        names: json['names'],
        lastNames: json['lastNames'],
        email: json['email'],
        address: json['address'],
        phone: json['phone'],
        password: json['password'],
        createdAt: json['createdAt'],
        updatedAt: json['updateAt'],
      );

  /*factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'],
      id: json['id'],
      titulo: json['title'],
    );
  }*/
}

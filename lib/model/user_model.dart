// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:random_user/model/user_dob_model.dart';
import 'package:random_user/model/user_location_model.dart';
import 'package:random_user/model/user_name_model.dart';
import 'package:random_user/model/user_picture_model.dart';

class UserModel {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Picture? picture;
  String? nat;

  UserModel(this.gender, this.name, this.location, this.email, this.dob,
      this.registered, this.phone, this.cell, this.picture, this.nat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'name': name?.toMap(),
      'location': location?.toMap(),
      'email': email,
      'dob': dob?.toMap(),
      'registered': registered?.toMap(),
      'phone': phone,
      'cell': cell,
      'picture': picture?.toMap(),
      'nat': nat,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['gender'] != null ? map['gender'] as String : null,
      map['name'] != null
          ? Name.fromMap(map['name'] as Map<String, dynamic>)
          : null,
      map['location'] != null
          ? Location.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      map['email'] != null ? map['email'] as String : null,
      map['dob'] != null
          ? Dob.fromMap(map['dob'] as Map<String, dynamic>)
          : null,
      map['registered'] != null
          ? Dob.fromMap(map['registered'] as Map<String, dynamic>)
          : null,
      map['phone'] != null ? map['phone'] as String : null,
      map['cell'] != null ? map['cell'] as String : null,
      map['picture'] != null
          ? Picture.fromMap(map['picture'] as Map<String, dynamic>)
          : null,
      map['nat'] != null ? map['nat'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

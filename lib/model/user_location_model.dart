// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:random_user/model/user_street_model.dart';

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;

  Location({this.street, this.city, this.state, this.country, this.postcode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street?.toMap(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      street: map['street'] != null
          ? Street.fromMap(map['street'] as Map<String, dynamic>)
          : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
      postcode: map['postcode'] != null ? map['postcode'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);
}

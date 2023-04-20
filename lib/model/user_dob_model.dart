// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'age': age,
    };
  }

  factory Dob.fromMap(Map<String, dynamic> map) {
    return Dob(
      date: map['date'] != null ? map['date'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dob.fromJson(String source) =>
      Dob.fromMap(json.decode(source) as Map<String, dynamic>);
}

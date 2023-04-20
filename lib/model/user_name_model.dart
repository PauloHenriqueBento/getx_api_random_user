// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'first': first,
      'last': last,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      title: map['title'] != null ? map['title'] as String : null,
      first: map['first'] != null ? map['first'] as String : null,
      last: map['last'] != null ? map['last'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) =>
      Name.fromMap(json.decode(source) as Map<String, dynamic>);
}

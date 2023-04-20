class UserModel {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Dob? dob;
  String? phone;
  String? cell;
  Picture? picture;

  UserModel(
      {this.gender,
        this.name,
        this.location,
        this.email,
        this.dob,
        this.phone,
        this.cell,
        this.picture});

  UserModel.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    email = json['email'];
    dob = json['dob'] != null ? new Dob.fromJson(json['dob']) : null;
    phone = json['phone'];
    cell = json['cell'];
    picture =
    json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['email'] = this.email;
    if (this.dob != null) {
      data['dob'] = this.dob!.toJson();
    }
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    if (this.picture != null) {
      data['picture'] = this.picture!.toJson();
    }
    return data;
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location(
      {this.street,
        this.city,
        this.state,
        this.country,
        this.postcode,
        this.coordinates,
        this.timezone});

  Location.fromJson(Map<String, dynamic> json) {
    street =
    json['street'] != null ? new Street.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    timezone = json['timezone'] != null
        ? new Timezone.fromJson(json['timezone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.street != null) {
      data['street'] = this.street!.toJson();
    }
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postcode'] = this.postcode;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    if (this.timezone != null) {
      data['timezone'] = this.timezone!.toJson();
    }
    return data;
  }
}

class Street {
  int? number;
  String? name;

  Street({this.number, this.name});

  Street.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    return data;
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class Timezone {
  String? offset;
  String? description;

  Timezone({this.offset, this.description});

  Timezone.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['description'] = this.description;
    return data;
  }
}

class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});

  Dob.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['age'] = this.age;
    return data;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
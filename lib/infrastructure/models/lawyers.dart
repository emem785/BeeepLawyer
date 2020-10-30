import 'package:flutter_svg/flutter_svg.dart';


class Lawyer {
  // SvgPicture profilePicture
  String firstname;
  String lastname;
  String phone;
  double distance;

  Lawyer({this.firstname, this.lastname, this.phone, this.distance});

  Lawyer.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    phone = json['phone'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['phone'] = this.phone;
    data['distance'] = this.distance;
    return data;
  }
}

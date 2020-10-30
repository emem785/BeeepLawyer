class Alert {
  double lng;
  String phone;
  String name;
  double lat;

  Alert({this.lng, this.phone, this.name, this.lat});

  Alert.fromJson(Map<String, dynamic> json) {
    lng = json['lng'];
    phone = json['phone'];
    name = json['name'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lng'] = this.lng;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['lat'] = this.lat;
    return data;
  }
}
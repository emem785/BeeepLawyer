class User {
  int id;
  int userId;
  int planId;
  String firstname;
  String lastname;
  String twitterHandle;
  String address;
  String email;
  String phone;
  String scnNumber;
  double longitude;
  double latitude;
  bool isVerified;
  Null token;
  String image;

  User(
      {this.id,
      this.userId,
      this.planId,
      this.firstname,
      this.lastname,
      this.twitterHandle,
      this.address,
      this.email,
      this.phone,
      this.longitude,
      this.latitude,
      this.isVerified,
      this.token,
      this.scnNumber,
      this.image});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    planId = json['plan_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    twitterHandle = json['twitter_handle'];
    address = json['address'];
    email = json['email'];
    phone = json['phone'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    isVerified = json['is_verified'];
    token = json['token'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['plan_id'] = this.planId;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['twitter_handle'] = this.twitterHandle;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['is_verified'] = this.isVerified;
    data['token'] = this.token;
    data['image'] = this.image;
    return data;
  }
}

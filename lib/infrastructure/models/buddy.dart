class Buddy {
  int id;
  String firstname;
  String lastname;
  String phonenumber;
  String relationship;
  int userId;

  Buddy(
      {this.id,
      this.firstname,
      this.lastname,
      this.phonenumber,
      this.relationship,
      this.userId});

  Buddy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    phonenumber = json['phonenumber'];
    relationship = json['relationship'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['phonenumber'] = this.phonenumber;
    data['relationship'] = this.relationship;
    data['user_id'] = this.userId;
    return data;
  }
}
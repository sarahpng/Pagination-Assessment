class UserModel {
  int age;
  String firstName;
  String lastName;
  String city;
  String country;
  String picture;

  UserModel({
    required this.age,
    required this.firstName,
    required this.lastName,
    required this.city,
    required this.country,
    required this.picture,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      age: json['dob']['age'],
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      city: json['location']['city'],
      country: json['location']['country'],
      picture: json['picture']['thumbnail'],
    );
  }
}

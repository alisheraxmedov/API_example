class User {
  final String firstName;
  final String lastName;
  final String phoneNUmber;
  final String email;
  final String country;
  final String dob;
  final String city;
  final String smallImage;
  final String bigImage;

  User({
    required this.firstName,
    required this.lastName,
    required this.phoneNUmber,
    required this.email,
    required this.country,
    required this.dob,
    required this.city,
    required this.smallImage,
    required this.bigImage,
  });
  
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        firstName: json['name']['first'],
        lastName: json['name']['last'],
        phoneNUmber: json['phone'],
        email: json['email'],
        country: json['location']['country'],
        dob: json['dob']['date'],
        city: json['location']['city'],
        smallImage: json['picture']['thumbnail'],
        bigImage: json['picture']['large']);
  }
}

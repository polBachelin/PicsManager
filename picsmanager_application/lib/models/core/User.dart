class User {
  int id;
  String token;
  String firstname;
  String lastName;
  String email;

  User({
    required this.id,
    required this.token,
    required this.firstname,
    required this.lastName,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    Iterable list = json["organizations"];
    try {
      return User(
        id: json["user"]["id"],
        token: json["token"],
        firstname: json["user"]["firstname"].toString(),
        lastName: json["user"]["lastName"].toString(),
        email: json["user"]["email"].toString(),
      );
    } catch (e) {
      print("catch user $e");
      return User(
          id: 0,
          token: "",
          firstname: "",
          lastName: "",
          email: "");
    }
  }
}

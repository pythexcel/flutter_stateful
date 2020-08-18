class User {
  final String name;
  final String email;

  User(this.name, this.email); //constructor

  User.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        email = json["email"] {
    print("fromJSONs Called"); //just for debugging
  }
  Map<String, dynamic> toJson() => {"name": name, "email": email};
}

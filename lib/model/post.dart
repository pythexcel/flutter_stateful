class Post {
  final String name;
  final String email;

  Post(this.name, this.email); //constructor

  Post.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        email = json["email"] {
    print("fromJSONs Called"); //just for debugging
  }
  Map<String, dynamic> toJson() => {"name": name, "email": email};
}

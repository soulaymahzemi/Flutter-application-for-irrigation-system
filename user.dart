class User1 {

  String email,  role;
  String id;
  User1({required this.email, required this.role,this.id=""});

  factory User1.tojson(Map<String, dynamic> json) {

    return (User1(email:json["email"], role: json["role"]));

  }

  @override

  String toString() {

    // TODO: implement toString

    return " $email";

  }

}
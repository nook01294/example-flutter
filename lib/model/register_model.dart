class RegisterModel {
  String username;
  String password;
  String name;
  String dateOfBirth;
  String phone;
  String email;

  RegisterModel(
      {this.username,
      this.password,
      this.name,
      this.dateOfBirth,
      this.phone,
      this.email});

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      username: json["username"] != null ? json["username"] : "",
      password: json["firstName"] != null ? json["firstName"] : "",
      name: json["lastName"] != null ? json["lastName"] : "",
      dateOfBirth: json["dateOfBirth"] != null ? json["dateOfBirth"] : "",
      phone: json["mobile"] != null ? json["mobile"] : "",
      email: json["email"] != null ? json["email"] : "",
    );
  }
}

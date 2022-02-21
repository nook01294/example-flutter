class LoginResponseModel {
  String token;
  String username;
  String firstName;
  String lastName;
  String dateOfBirth;
  String mobile;
  String email;
  // final String role;
  String error;

  LoginResponseModel(
      {this.username,
      this.firstName,
      this.lastName,
      this.token,
      this.error,
      this.dateOfBirth,
      this.mobile,
      this.email});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      username: json["username"] != null ? json["username"] : "",
      firstName: json["firstName"] != null ? json["firstName"] : "",
      lastName: json["lastName"] != null ? json["lastName"] : "",
      dateOfBirth: json["dateOfBirth"] != null ? json["dateOfBirth"] : "",
      mobile: json["mobile"] != null ? json["mobile"] : "",
      email: json["email"] != null ? json["email"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String username;
  String password;

  LoginRequestModel({
    this.username,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': username.trim(),
      'password': password.trim(),
    };

    return map;
  }
}

class RegisterPage{
  String name;
  String email;
  String password;
  RegisterPage({
    required this.name,
    required this.email,
    required this.password
  });

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}

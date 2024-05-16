// lib/model/user.dart
class UserModel {
  String email;
  String password;
  String? confirmPassword;

  UserModel({required this.email, required this.password, this.confirmPassword});
}
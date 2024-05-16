import 'package:flutter/material.dart';
import 'package:vendorvault/common/custom_button.dart';
import 'package:vendorvault/common/custom_text_field.dart';
import 'package:vendorvault/model/user_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final UserModel _user = UserModel(email: '', password: '');
  bool _isLoading = false;

  void _register() {
    setState(() {
      _isLoading = true;
    });
    // Implement registration logic here
    print('Email: ${_user.email}, Password: ${_user.password}');
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/logo.png'),
            CustomTextField(
              labelText: 'Email',
              onChanged: (value) => _user.email = value,
            ),
            SizedBox(height: 16),
            CustomTextField(
              labelText: 'Password',
              isPassword: true, // Set to true for password field
              onChanged: (value) => _user.password = value,
            ),
            SizedBox(height: 16),
            CustomButton(
              text: 'Register',
              onPressed: _register,
              isLoading: _isLoading,
            ),
          ],
        ),
      ),
    );
  }
}

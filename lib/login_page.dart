import 'package:aplikasitest2/ui/colors.dart';
import 'package:aplikasitest2/ui/reuse_button.auth.dart';
import 'package:aplikasitest2/ui/reuse_social_button.dart';
import 'package:aplikasitest2/ui/reuse_textfield.dart';
import 'package:aplikasitest2/ui/typografi.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                Text("Login Here", style: lBold.copyWith(color: white)),
                Text(
                  "Welcome Back you've\n been missed",
                  textAlign: TextAlign.center,
                  style: lBold.copyWith(color: white),
                ),
                SizedBox(height: 16),
                ReuseTextfieldAuth(
                  controller: _usernameController,
                  labelText: "Eamil or Username",
                  hintText: "Enter your Eamil or Username",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),
                ReuseTextfieldAuth(
                  controller: _passwordController,
                  labelText: "Password",
                  hintText: "Masukkan Password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: sRegular.copyWith(color: blue),
                    ),
                  ),
                ),
                ReuseButtonAuth(isLogin: true),
                SizedBox(height: 16),
                ReuseButtonAuth(isLogin: false),
                SizedBox(height: 16),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Or Continue With',
                    style: sSemiBold.copyWith(
                      color: blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Text(
                        'G',
                        style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Icon(Icons.facebook, color: white, size: 26),
                    ),
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Icon(Icons.apple, color: white, size: 26),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

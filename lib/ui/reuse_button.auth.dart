import 'package:aplikasitest2/home_page.dart';
import 'package:aplikasitest2/ui/colors.dart';
import 'package:aplikasitest2/ui/typografi.dart';
import 'package:flutter/material.dart';

class ReuseButtonAuth extends StatelessWidget {
  final bool isLogin;
  const ReuseButtonAuth({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(builder: (context) => const homePage()),
        );
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isLogin ? white : buttonGrey,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          isLogin ? 'Sign In' : 'Create New Account',
          style: smBold.copyWith(
            color: isLogin ? background : white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

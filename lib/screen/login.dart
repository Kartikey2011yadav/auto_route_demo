import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Login extends StatelessWidget {
  const Login({super.key, required this.onResult});

  final Function(bool?) onResult;
  @override
  Widget build(BuildContext context) {

    // login Status----------------------------------------------------
    onResult.call(true);
    // login Status----------------------------------------------------

    return const Scaffold(
      body: Center(
        child: Text("Login Failed"),
      ),
    );
  }
}

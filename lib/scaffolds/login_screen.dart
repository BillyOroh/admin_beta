import 'package:flutter/material.dart';
import 'package:admin_one/components/login_form.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              // depe icon
              Icons.lock,
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              // depe tulisan welcome
              'W E L C O M E',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            LoginForm(formState: _formState, textController: textController),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:admin_one/scaffolds/app_screen.dart';
import 'package:admin_one/components/login_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
            LoginTextField(
              // depe field username
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            SizedBox(
              height: 10.0,
            ),
            LoginTextField(
              // depe field password
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              // depe tombol login
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AppScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                child: Text('L O G I N'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

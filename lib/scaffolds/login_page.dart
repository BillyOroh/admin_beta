import 'package:flutter/material.dart';
import 'package:admin_one/scaffolds/app_page.dart';
import 'package:admin_one/components/my_login_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'W E L C O M E',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyLoginTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            SizedBox(
              height: 10.0,
            ),
            MyLoginTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AppPage()));
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

import 'package:flutter/material.dart';
import 'package:admin_one/scaffolds/app_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formState,
    required this.textController,
  }) : _formState = formState;

  final GlobalKey<FormState> _formState;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formState,
      child: Column(
        children: [
          SizedBox(
            width: 400.0,
            child: TextFormField(
              controller: textController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Masukkan nomor terlebih dahulu';
                } else if (textController.text.length != 12 &&
                    textController.text.length != 11) {
                  return 'Masukkan nomor yang valid (11-12 angka)';
                }
                return null;
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'Masukkan Nomor Telepon',
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            onPressed: () {
              if (_formState.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppScreen(
                              nomor: textController.text,
                            )));
              }
            },
            child: Text('L O G I N'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// back button

// Colors
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                textHeader('Create an account',
                    color: Theme.of(context).primaryColor),
                const SizedBox(height: 40.0),
                _input(context, 'Username', TextInputType.text),
                _input(context, 'Email', TextInputType.emailAddress),
                _input(context, 'Phone', TextInputType.phone),
                _input(context, 'Date of Birth', TextInputType.datetime),
                _input(context, 'Password', TextInputType.visiblePassword,
                    obscureText: true),
                roundedButton(context: context, label: 'Sign Up'),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 40.0),
                  child: const Text(
                    'By clicking Sign up you agree to the following Terms and Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _input(BuildContext context, String text, TextInputType? keyboardType,
    {bool obscureText = false}) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInput,
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

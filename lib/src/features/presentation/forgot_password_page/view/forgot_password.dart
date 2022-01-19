import 'package:flutter/material.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/login_page/view/login_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/rounded_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/text_header.dart';

class ForgotPassword extends StatelessWidget {
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              textHeader("Forgot password",
                  color: Theme.of(context).primaryColor),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Please enter your email address. You will receive a link to create',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _emailInput(),
              roundedButton(
                label: "Send",
                onPressed: () => _showDialog(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Your Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

void _showDialog(BuildContext context) {
  showAlertDialog(
    context,
    const NetworkImage(
        'https://icon-library.com/images/reset-password-icon/reset-password-icon-29.jpg'),
    'Your password has been reset',
    "Tou'll shortly receive an email a code to setup a new password",
    roundedButton(
        label: "Done",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        }),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Colors
import 'package:ytb_flutter_delivery_firebase/src/colors/colors.dart';

// Widgets
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/forgot_password_page/view/forgot_password.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/tabs/tabs_page/view/tabs_page.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Headers/text_header.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(0.0),
        children: [
          Column(
            children: [
              Stack(children: [
                const Image(
                  width: double.infinity,
                  height: 250.0,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1530&q=80'),
                  // 'https://source.unsplash.com/1600x900/?food'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: backButton(context, Colors.white),
                )
              ]),
              Transform.translate(
                offset: const Offset(0.0, -20.0),
                child: Container(
                  width: double.infinity,
                  height: 433.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        children: [
                          textHeader("Welcome Back",
                              color: Theme.of(context).primaryColor),
                          const Text(
                            "Login to you account",
                            style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          ),
                          _emailInput(),
                          _passwordInput(),
                          roundedButton(
                              label: "Login",
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => TabsPage()));

                                Navigator.pushNamed(context, 'tabs');
                              }),
                          Container(
                            margin: const EdgeInsets.only(top: 30.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassword()));
                              },
                              child: Text(
                                'Forgot you password?',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryVariant,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.pushNamed(context, 'sign_up');
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignUpPage()));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: const Color.fromRGBO(142, 142, 147, 1.2),
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          // borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 15.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: const Color.fromRGBO(142, 142, 147, 1.2),
    ),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          // borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  );
}

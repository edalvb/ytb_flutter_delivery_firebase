import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:ytb_flutter_delivery_firebase/src/features/presentation/login_page/view/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      // Si queremos que el contenido de la pantalla sea responsive
      // Podríamos agregar row dependiendo de la orientación
      // Para poner la imagen a la izquierda y lo demás a la derecha
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://fondosmil.com/fondo/35731.jpg'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text('DELIVERED FAST FOOD TO YOUR DOOR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: const Text(
                    'Set exact location to find the right restaurants near you.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0,
                    )),
              ),
              roundedButton(
                  label: 'Log in',
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              roundedButton(
                label: 'Connect with facebook',
                isWithIcon: true,
                color: Theme.of(context).colorScheme.onSecondary,
                icon: const AssetImage('assets/images/facebook.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

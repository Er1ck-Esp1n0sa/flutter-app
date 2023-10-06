import 'package:flutter/material.dart';
import 'package:ui_one/features/auth/presentation/pages/sign_in_page.dart';
import 'package:ui_one/features/auth/presentation/pages/sign_up_page.dart';

import '../components/buttons.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 18, 223, 195), // Cambia el color de fondo aquí
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "¡Bienvenido!",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 38, 193, 232),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              // Centra el botón
              child: SizedBox(
                width: 500, // Ancho deseado
                child: MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  text: "Registrarse",
                  color: const Color.fromARGB(255, 0, 121, 0),
                  textColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 30),
            const Text(
              "¿Ya tienes una cuenta?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF383838),
                letterSpacing: 0.5,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              // Centra el botón
              child: SizedBox(
                width: 500, // Ancho deseado
                child: MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInPage.id);
                  },
                  text: "inicia sesion",
                  color: const Color.fromARGB(255, 0, 49, 185),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

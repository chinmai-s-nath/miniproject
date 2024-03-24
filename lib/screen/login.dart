import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_application_1/screen/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Loginstate createState() => Loginstate();
}

class Loginstate extends State<Login> {
  final TextStyle textStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 30,
    ),
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: HexColor('#ED4848'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#2B2D42'),
      appBar: AppBar(
        title: Center(
          child: Text(
            'HOSPIFY',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 42.92,
                fontWeight: FontWeight.w800,
                color: HexColor('#ED4848'),
              ),
            ),
          ),
        ),
        backgroundColor: HexColor('#2B2D42'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Create Account', style: textStyle),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  buildButton('Register as new user', isNewUser: true),
                  buildButton('Register as Ambulance Driver'),
                  buildButton('Register as Alert receiver'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget buildButton(String text, {bool isNewUser = false}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (isNewUser){

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Registers()),
            );
          }
        },
        style: buttonStyle,
        child: Text(text),
      ),
    ),
  );
}
}
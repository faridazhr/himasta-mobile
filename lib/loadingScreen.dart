import 'package:flutter/material.dart';
import 'package:himasta_mobile/main_.dart';
import 'package:splashscreen/splashscreen.dart';
import 'ui/pages/pages.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xff31986C), Color(0xff426DA8)],
    ).createShader(Rect.fromLTWH(100.0, 100.0, 150.0, 0.0));

    return SplashScreen(
      seconds: 3,
      backgroundColor: const Color(0xff22232A),
      image: Image.asset('assets/ic_landing.png'),
      photoSize: MediaQuery.of(context).size.width / 3,
      navigateAfterSeconds: Main(),
      loaderColor: Colors.transparent,
      loadingText: Text(
        '\n\n\n\n\n\n\n\n© 2021 | Dept. Media Informasi\nBE Himasta Kabinet Harmoni Karya',
        style: TextStyle(
          // color: Colors.white60,
          fontSize: 10,
          foreground: new Paint()..shader = linearGradient,
          letterSpacing: 2,
          fontFamily: 'BebasNeue',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

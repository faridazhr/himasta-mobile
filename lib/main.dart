import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'loadingScreen.dart';

//The Main function is the starting point for all our Apps.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HimastaMobile(),
  ));
}

class HimastaMobile extends StatefulWidget {
  @override
  _HimastaMobileState createState() => _HimastaMobileState();
}

class _HimastaMobileState extends State<HimastaMobile> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

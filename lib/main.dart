import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:deliverylaundry/Halaman_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deliverylaundry/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(splashview());
}

class splashview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home:SplashScreenView(
        navigateRoute: loginview(),
        duration: 5000,
        imageSize: 130,
        imageSrc: "file/logo.png",
        text: "Delivery Laundry",
        textType: TextType.ScaleAnimatedText,
        textStyle: TextStyle(
          fontSize: 40.0,
          color : Colors.white,
        ),
        backgroundColor: Colors.indigo,
      ),

    );
  }
}



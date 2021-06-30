import 'package:deliverylaundry/Halaman_Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
      home: SplashScreenView(
        navigateRoute: loginview(),
        duration: 6000,
        imageSize: 400,
        imageSrc: "file/logo.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}



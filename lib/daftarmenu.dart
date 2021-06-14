import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:deliverylaundry/Halaman_login.dart';

class daftarmenu extends StatefulWidget {
  const daftarmenu({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _daftarmenuState createState() => _daftarmenuState();
}

class _daftarmenuState extends State<daftarmenu> {
  static get user => FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('abc'),
    );
  }
}

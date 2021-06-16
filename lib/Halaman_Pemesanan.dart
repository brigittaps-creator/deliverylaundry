import 'package:flutter/material.dart';
import 'package:deliverylaundry/main.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:select_form_field/select_form_field.dart';

class pemesananview extends StatelessWidget {

  static get user => FirebaseAuth.instance.currentUser;

  final formKey = GlobalKey<FormState>();
  final alamat = TextEditingController();
  final jumlah_barang = TextEditingController();
  final total_berat = TextEditingController();
  final tgl_antar = DateFormat("dd-MM-yyyy");
  final tgl_ambil = DateFormat("dd-MM-yyyy");
  final catatan = TextEditingController();
  final estimasi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: Text(
          'PEMESANAN LAUNDRY',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(),
    );
  }
}

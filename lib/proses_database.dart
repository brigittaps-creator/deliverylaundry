import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');

class Database {

  static String? userUid;

  //Todo : Write Data
  static Future<void> addItem({
    required String alamat,
    required String catatan,
    required String tgl_ambil,
    required String tgl_antar,
    required String jumlah_barang,
    required String total_berat,
  }) async {
    DocumentReference documentReferencer =
    _mainCollection.doc(userUid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "alamat" : alamat,
      "catatan" : catatan,
      "tgl_ambil" : tgl_ambil,
      "tgl_antar" : tgl_antar,
      "jumlah_barang" : jumlah_barang,
      "total_berat" : total_berat,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Pesanan laundry berhasil dibuat, kami akan menghubungi anda segera"))
        .catchError((e) => print(e));
  }

  //Todo: Read Data
  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
    _mainCollection.doc(userUid).collection('items');

    return notesItemCollection.snapshots();
  }
}
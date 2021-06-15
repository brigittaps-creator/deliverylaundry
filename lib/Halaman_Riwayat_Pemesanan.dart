import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliverylaundry/proses/database.dart';
import 'package:page_transition/page_transition.dart';

class riwayatpemesanan extends StatefulWidget {
  const riwayatpemesanan({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _riwayatpemesananState createState() => _riwayatpemesananState();
}

class _riwayatpemesananState extends State<riwayatpemesanan> {
  late User _user;

  @override
  void initState() {
    _user = widget._user;
    Database.userUid = _user.uid;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: Text(
          'RIWAYAT PEMESANAN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("file/mesincuci.jpg"),
                fit: BoxFit.cover)
        ),
        child: Container(
          child: Card(
            margin: const EdgeInsets.only(left: 25,right: 25, top: 25, bottom: 25),
            elevation: 5,
            color: Colors.white.withOpacity(0.8),
            child: StreamBuilder<QuerySnapshot>(
              stream: Database.readItems(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(
                    'Error',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  );
                }
                else if (snapshot.hasData || snapshot.data != null) {
                  return ListView.separated(
                    //scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(height: 16.0),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      var noteInfo = snapshot.data!.docs[index].data();
                      String alamat = noteInfo['alamat'];
                      String catatan = noteInfo['catatan'];
                      String tgl_ambil = noteInfo['tgl_ambil'];
                      String tgl_antar = noteInfo['tgl_antar'];
                      String jumlah_barang = noteInfo['jumlah_barang'];
                      String total_berat = noteInfo['total_berat'];

                      return Column(
                        children: [
                          ListTile(
                            title: Text(''),
                            leading: Text(''),
                            trailing: Text(''),
                          ),
                          Divider(),
                        ],
                      );
                    },
                  );
                }

                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.blue,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:deliverylaundry/Halaman_login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:deliverylaundry/Halaman_Profil.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: Text('DELIVERY LAUNDRY'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("file/mesincuci.jpg"),
                fit: BoxFit.cover)
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: SizedBox(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                            'Pemesanan Laundry',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: SizedBox(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                            'Riwayat Pemesanan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: SizedBox(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                            'Tentang Kami',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.blue,
                    child: InkWell(
                      splashColor: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: profilview(user: user)));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                            'Profil',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

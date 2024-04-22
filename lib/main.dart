import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Ku'),
      ),
      backgroundColor: Color.fromRGBO(112, 186, 255, 1), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20), 
              child: Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/emi.jpg'), 
                ),
              ),
            ),
            const Text(
              'Emi Fitriani | STI202102277',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const SingleChildScrollView(
                  child: Text(
                    'Hello Perkenalkan Nama Saya Emi Fitriani, Alamatku di Jalan Blabursari Desa Pancasan kec Ajibarang, Usiaku 21th, aku mempunyai hobi yaitu Menonton film disaat aku sedang istirahat atau sedang senggang, saat ini saya sedang menempuh pendidikan S1 Teknik Informatika di STMIK Widya Utama Purwokerto, Trimakasih',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

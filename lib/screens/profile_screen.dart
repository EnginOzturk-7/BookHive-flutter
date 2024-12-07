import 'package:flutter/material.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim, // .fromARGB(255, 35, 47, 59),
      appBar: AppBar(
        backgroundColor: ikincilRenkim,
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Logoya biraz boşluk bırakmak için padding ekledik
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'BookHive',
            style: TextStyle(
                color: Color.fromARGB(228, 255, 217, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
            ),
          )
        ),
      ),
      body: Center(
        child: Text("profil ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
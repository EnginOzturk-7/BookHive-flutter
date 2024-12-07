// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim,
      appBar: AppBar(
        backgroundColor: ikincilRenkim,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
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
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey, // Profil fotoğrafı için bir arka plan rengi
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.white, // İkon rengi
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Engin Öztürk", // Ad ve Soyad
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Okul Numarası: 2320161071",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Bölüm: Bilgisayar Programcılığı",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 30),
            const ProfileInfoRow(
              icon: Icons.email,
              label: "E-mail",
              value: "ozturk.engin.0811@gmail.com",
            ),
            const SizedBox(height: 20),
            const ProfileInfoRow(
              icon: Icons.phone,
              label: "Phone",
              value: "+90 534 910 1524",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: ikincilRenkim,
          size: 32,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            "$label: $value",
            style: const TextStyle(
              fontSize: 24,
              color: ikincilRenkim,
            ),
          ),
        ),
      ],
    );
  }
}
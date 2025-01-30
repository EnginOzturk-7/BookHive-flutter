// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: unused_import
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'BookHive',
            style: TextStyle(
              color:Theme.of(context).colorScheme.onSecondary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(context.read<ThemeProvider>().isDark 
              ? CupertinoIcons.sun_max 
              : CupertinoIcons.moon, color: Theme.of(context).colorScheme.onSecondary,),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
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
            Text(
              "Engin Öztürk", // Ad ve Soyad
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Okul Numarası: 2320161071",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Bölüm: Bilgisayar Programcılığı",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
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
          color: Theme.of(context).colorScheme.onPrimary,
          size: 32,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            "$label: $value",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
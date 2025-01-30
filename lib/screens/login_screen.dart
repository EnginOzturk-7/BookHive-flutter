// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController epostaYonetici = TextEditingController();
  TextEditingController sifreYonetici = TextEditingController();

  girisYap() {
    if (epostaYonetici.text.isEmpty || sifreYonetici.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter Your Information"),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          showCloseIcon: true,
        ),
      );
    } else {
      if (sifreYonetici.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Password has to be 8 characters at minimum."),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            showCloseIcon: true,
          ),
        );
      } else {
        context.go("/home");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: epostaYonetici,
                decoration: InputDecoration(
                  hintText: "E-Mail",
                  hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  fillColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.email, color: Theme.of(context).colorScheme.onPrimary),
                ),
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                controller: sifreYonetici,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  fillColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.onPrimary),
                ),
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              SizedBox(height: 24),
              OutlinedButton(
                onPressed: girisYap,
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Log in", style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 16)),
              ),
              SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  context.pushReplacement("/register");
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Register", style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontSize: 16)),
              ),
              SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: Image.asset('assets/icons/google_icon.png', height: 24),
                label: Text("Enter with Google", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
              ),
              SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: Image.asset('assets/icons/apple_icon.png', height: 24),
                label: Text("Enter with Apple ID ", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

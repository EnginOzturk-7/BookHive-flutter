// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                decoration: InputDecoration(
                  hintText: "Name Surname",
                  hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  fillColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.person, color: Theme.of(context).colorScheme.onPrimary),
                ),
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              SizedBox(height: 16),
              TextField(
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
              TextField(
                obscureText: true,
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
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Repeat Password",
                  hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  fillColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).colorScheme.onPrimary),
                ),
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              SizedBox(height: 24),
              OutlinedButton(
                onPressed: () {
                  context.go("/home");
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Register", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
              ),
              SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  context.push("/login");
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Log in", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

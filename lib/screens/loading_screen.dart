//açılış ekranımız buraya gelecek

import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// ignore: unused_import
import 'package:flutter_app/routes/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 27, 61),
      body: SizedBox.expand(
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  // Yazı
                  const SizedBox(height: 10),
                  const Text(
                    "BookHive",
                    style: TextStyle(
                      color: Color(0xFFFFD700), 
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
            // Yükleme ikonu
            InkWell(
              onTap:() => context.go("/home"),
              child: SizedBox(
                width: 200,
                child:  DotLottieLoader.fromAsset(
                  "assets/motions/loading.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  }
                ),
              ),
            ),
            // Boşluk bırakıyoruz
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
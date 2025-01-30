//ana ekranımız buraya gelecek

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/storage.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:provider/provider.dart';

import '../widgets/bottom_menu.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      // AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Logoya biraz boşluk bırakmak için padding ekledik
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
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
            ),
          )
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

      // Drawer (Yan Menü)(kaldırdım)(Bir işlev görmüyordu ve çok göze batıyordu)

      // Ana içerik
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              Center(
                child: Text(
                  'Popular Genres',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GenreTags('Mystery'),
                      GenreTags('Romance'),
                      GenreTags('Fantasy'),
                      GenreTags('Science Fiction'),
                      GenreTags('Drama'),
                      GenreTags('Fiction'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GenreTags('Philosophy'),
                      GenreTags('Classic'),
                      GenreTags('Psychology'),
                      GenreTags('Adventure'),
                      GenreTags('Political'),
                      GenreTags("Dystopian"),
                    ]
                  ),
                  const SizedBox(height:40),
                  Text(
                    'Popular Books',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(height:15),                  
                  Column(
                    children: books.map((book) {
                    return Column(
                      children: [
                        BookContainers(
                          title: book['title']!,
                          author: book['author']!,
                          genre: book['genre']!,
                          image: book['image']!,
                        ),
                      const SizedBox(height: 10),
                      ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomMenu(),
    );
  }
}
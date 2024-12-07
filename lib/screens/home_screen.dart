//ana ekranımız buraya gelecek

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/storage.dart';
import 'package:flutter_app/core/themes.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanRenkim,
      // AppBar
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

      // Drawer (Yan Menü)(kaldırdım)

      // Ana içerik
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Popular Genres',
                  style: TextStyle(
                    color: ikincilRenkim,
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
                  const Text(
                    'Popular Books',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ikincilRenkim,
                    ),
                  ),
                  const SizedBox(height:15),                  
                  Column(
                    children: books.map((book) {
                    return Column(
                      children: [
                        BookContainers(
                          book['title']!,
                          book['author']!,
                          book['genre']!,
                          book['image']!,
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
  Widget GenreTags(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: ikincilRenkim.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ikincilRenkim,
      ),
      textAlign: TextAlign.center,
    ),
  );
  }
  Widget BookContainers(String title, String author, String genre,String image) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color:Colors.black),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 100,
            height: 160,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  author,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  genre,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
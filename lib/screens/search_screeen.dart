import 'package:flutter/material.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Discover",
              style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Search for content and discover new books.",
              style: TextStyle(
                fontSize: 16,
                  color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 20),
            // Arama Çubuğu
            TextField(
              decoration: InputDecoration(
                hintText: "Search for books, authors or genres...",
                hintStyle: TextStyle(color: ikincilRenkim),
                filled: true,
                fillColor: ikincilRenkim.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: ikincilRenkim,
                ),
              ),
              style: const TextStyle(color: ikincilRenkim),
            ),
            const SizedBox(height: 20),
            const Text(
              "Most Searched Genres:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ikincilRenkim,
              ),
            ),
            const SizedBox(height: 10),
            // Türlerin Listesi
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                GenreTags("Mystery"),
                GenreTags("Romance"),
                GenreTags("Fantasy"),
                GenreTags("Fiction"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
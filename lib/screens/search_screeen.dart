// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              color: Theme.of(context).colorScheme.onSecondary,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover",
              style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Search for content and discover new books.",
              style: TextStyle(
                fontSize: 16,
                  color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 20),
            // Arama Çubuğu
            TextField(
              decoration: InputDecoration(
                hintText: "Search for books, authors or genres...",
                hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                filled: true,
                fillColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            const SizedBox(height: 20),
            Text(
              "Most Searched Genres:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
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
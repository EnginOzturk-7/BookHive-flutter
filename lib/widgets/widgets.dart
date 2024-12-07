import 'package:flutter/material.dart';

import '../core/themes.dart';

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
      color: ikincilRenkim.withOpacity(0.1),
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
                  color: ikincilRenkim,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                author,
                style: const TextStyle(
                  color: ikincilRenkim,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                genre,
                style: const TextStyle(
                  color: ikincilRenkim,
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
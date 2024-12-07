import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              context.go("/home");
            },
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.home,
                ),
                Text('Home')
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/search");
            },
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.search,
                ),
                Text('Discover')
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/profile");
            },
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.person,
                ),
                Text('Profile')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

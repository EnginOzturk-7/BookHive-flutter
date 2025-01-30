// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;

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
            icon: Icon(
              context.read<ThemeProvider>().isDark
                  ? CupertinoIcons.sun_max
                  : CupertinoIcons.moon,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.language, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Language', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: DropdownButton<String>(
                      value: 'EN',
                      dropdownColor: Theme.of(context).colorScheme.primary,
                      items: ['EN', 'TR'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.palette, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Theme', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Switch(
                      value: Theme.of(context).brightness == Brightness.dark,
                      onChanged: (value) {
                        context.read<ThemeProvider>().toggleTheme();
                      },
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Notifications', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Switch(
                      value: _notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.security, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Security', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Theme.of(context).colorScheme.onPrimary),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.help, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Help', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Theme.of(context).colorScheme.onPrimary),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.info, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('About', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Theme.of(context).colorScheme.onPrimary),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.privacy_tip, color: Theme.of(context).colorScheme.onPrimary),
                    title: Text('Privacy Policy', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Theme.of(context).colorScheme.onPrimary),
                    onTap: () {},
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.delete, color: Colors.red),
                    title: Text(
                      'Delete Your Account',
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      context.go("/profile");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}

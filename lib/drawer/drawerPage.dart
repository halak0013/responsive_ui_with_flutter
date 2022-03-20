//Bismillahirrahmanirrahim
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_ui_with_flutter/constants.dart';
import 'package:responsive_ui_with_flutter/responsive_layout.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class ButtonsInfo {
  String title;
  IconData icon;

  ButtonsInfo({required this.title, required this.icon});
}

int _currentIndex = 0;

List<ButtonsInfo> _buttonNames = [ButtonsInfo(title: "Home", icon: Icons.home)];

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Admin Menu',
                style: TextStyle(color: Colors.white),
              ),
              trailing: ResponsiveLayout.isComputer(context)
                  ? null
                  : IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
            ),
            ...List.generate(
              _buttonNames.length,
              (index) => Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [purpleDark,orangeDark]),)
                  ),
                
              ]),
            ),
          ],
        ),
      )),
    );
  }
}

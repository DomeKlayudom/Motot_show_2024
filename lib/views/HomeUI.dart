// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motor_show_2024_app/views/CarCalculateUI.dart';
import 'package:motor_show_2024_app/views/HondaUI.dart';
import 'package:motor_show_2024_app/views/MazdaUI.dart';
import 'package:motor_show_2024_app/views/MitsubishiUI.dart';
import 'package:motor_show_2024_app/views/ToyotaUI.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

List<Widget> _showView = [
  ToyotaUI(),
  HondaUI(),
  CarCalculateUI(),
  MitsubishiUI(),
  MazdaUI(),
];

int _currentIndex = 2;

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showView[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[400],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.accusoft),
              label: 'Toyota',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.walkieTalkie),
              label: 'Honda',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.android),
              label: 'Cal',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.deploydog),
              label: 'Mitsubishi',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bacon),
              label: 'Mazda',
            ),
          ],
        ),
      ),
    );
  }
}

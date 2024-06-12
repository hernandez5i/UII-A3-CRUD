import 'package:requenes0397/pages/list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const PersonList(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Firebase Zapatería.',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff959595),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

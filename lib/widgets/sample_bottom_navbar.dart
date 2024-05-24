import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/sample_column_row.dart';
import 'package:flutter_application_10/widgets/sample_padding.dart';

class SampleBottomNavbar extends StatefulWidget {
  const SampleBottomNavbar({super.key});

  @override
  State<SampleBottomNavbar> createState() => _SampleBottomNavbarState();
}

class _SampleBottomNavbarState extends State<SampleBottomNavbar> {
  int _selectedIndex = 0;

 void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   List<Widget> _pages = [
    const SampleColumnRow(),
    const Text(
      'Cari',
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      'Favorite',
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      'Setting',
      style: TextStyle(fontSize: 30),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Column Row'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[400],
        selectedItemColor: Colors.deepPurple,
        selectedFontSize: 20,
        iconSize: 30,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),

        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SampleBottomNavbar(),
  ));
}

import 'package:first_flutter/pages/tab_home.dart';
import 'package:first_flutter/pages/tab_vista2.dart';
import 'package:flutter/material.dart';

class BottomNavbarPage extends StatefulWidget {
  const BottomNavbarPage({super.key});

  @override
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {

  int _currentIndex = 0;
  List<Map<String, dynamic>> _paginas = [
    {
      'pagina': TabHome(),
      'texto': 'Home',
      'icon': Icons.home,
    },
    {
      'pagina': TabVista2(),
      'texto': 'Vista 2',
      'icon': Icons.car_rental,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(_paginas[_currentIndex]['texto']),
        //leading: Icon(_paginas[_currentIndex]['icon']),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: _paginas[_currentIndex]['pagina'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_paginas[0]['icon']),
            label: _paginas[0]['texto'],
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(_paginas[1]['icon']),
            label: _paginas[1]['texto'],
            backgroundColor: Colors.blue,
          ),
        ],
        
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    drawer: _getDrawer(context),
    );
  }

  Widget _getDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.orange,),
            child: Row(
              children: [
                FlutterLogo(
                  size:100,
                ),
                Text(
                  'Mi Aplicación',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              setState(() {
                _currentIndex = 0;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.car_rental),
            title: const Text('Vista 2'),
            onTap: () {
              setState(() {
                _currentIndex = 1;
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
import 'package:first_flutter/pages/tab_home.dart';
import 'package:first_flutter/pages/tab_vista2.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home',),
                Tab(icon: Icon(Icons.car_rental), text: 'Vista 2',),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              TabHome(),
              TabVista2(),
            ],
          ),
        ),
      ),
    );
  }
}
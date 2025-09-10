import 'package:flutter/material.dart';
import 'package:first_flutter/pages/header_searchbar.dart';

class TabHome extends StatelessWidget {
  const TabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Container(
            height: 120,
            color: Colors.red,
            child: const HeaderSearchbar(),
            ),
          Container(
            height: 300,
            color: Colors.blue,
            ),
          Container(
            height: 300,
            color: Colors.green,
            ),

          SizedBox(
            height: 150,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200,
                color: Colors.purple,
                ),
              Container(
                width: 200,
                color: Colors.orange,
                ),
              Container(
                width: 200,
                color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
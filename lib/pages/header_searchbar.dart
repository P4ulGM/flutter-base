
import 'package:flutter/material.dart';

class HeaderSearchbar extends StatelessWidget {
  const HeaderSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          width: size.width,
          bottom: 10,
          left: 10,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: 100,
                height: 100,
                child: Image(image: AssetImage('assets/chary.png')),
              ),
              Spacer(),
              Container(
                width: 250,
                height: 50,
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Buscar',
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


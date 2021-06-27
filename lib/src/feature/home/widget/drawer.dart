import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Positioned(
            left: 10,
            child: Container(
                width: 44,
                height: 44,
                child: Image.asset(
                  'assets/icon/drawer.png',
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            right: 10,
            child: Container(
                width: 44,
                height: 44,
                child: Image.asset(
                  'assets/icon/Search.png',
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}

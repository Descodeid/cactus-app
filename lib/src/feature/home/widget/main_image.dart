import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'CakTus',
            textScaleFactor: 3,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Intel'),
          ),
          Text(
            'Plan & Decoration',
            style: TextStyle(color: Colors.black, fontFamily: 'Intel'),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              width: 300,
              height: 300,
              child: Image.asset(
                'assets/icon/icon.png',
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}

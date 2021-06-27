import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Cactus',
            textScaleFactor: 3,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter'),
          ),
          Text(
            'Plan & Decoration',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
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

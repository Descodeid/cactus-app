import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Color color;
  DetailAppBar({@required this.color});

  @override
  _DetailAppBarState createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Plantpedia',
        style: TextStyle(
            color: widget.color,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter'),
        textScaleFactor: 2.0,
      ),
    );
  }
}

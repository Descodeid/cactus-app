import 'package:flutter/material.dart';
import 'package:plant/src/feature/home/screen/detail_page.dart';

class BottomDescription extends StatelessWidget {
  final color = const Color(0xFFB74093);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Stack(
        fit: StackFit.passthrough,
        overflow: Overflow.visible,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(26, 188, 156, 1.0),
          ),
          // // SizedBox(),
          Positioned(
            top: -20,
            right: MediaQuery.of(context).size.width / 5,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 44,
                height: 44,
                child: Icon(Icons.shopping_cart_sharp)),
          ),
          Positioned(
            top: -20,
            right: MediaQuery.of(context).size.width / 20,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 44,
                height: 44,
                child: Icon(Icons.favorite)),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 16,
              left: 20,
              child: Text(
                'Simple Description',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 10,
              left: 20,
              right: 20,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                overflow: TextOverflow.clip,
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 1.5,
            right: -20,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                    ),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Text(
                    'More Detail',
                    style: TextStyle(
                        fontFamily: 'Intel', fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

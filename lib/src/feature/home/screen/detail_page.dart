import 'package:flutter/material.dart';
import 'package:plant/src/feature/home/widget/detail_appBar.dart';
import 'package:plant/src/feature/home/widget/drawer.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromRGBO(26, 188, 156, 1.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        DetailAppBar(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(child: DrawerTile())
                      ],
                    ))),
            Expanded(
                flex: 4,
                child: Container(
                  child: Stack(
                    fit: StackFit.passthrough,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          left: MediaQuery.of(context).size.width / 7,
                          // top: -180,
                          top: -MediaQuery.of(context).size.height / 5,
                          child: Container(
                              width: 300,
                              height: 300,
                              child: Image.asset('assets/icon/icon.png'))),
                      Positioned(
                          left: 20,
                          top: MediaQuery.of(context).size.height / 5,
                          child: Icon(Icons.comment_outlined)),
                      Positioned(
                          left: 80,
                          top: MediaQuery.of(context).size.height / 5,
                          child: Text(
                            'Description',
                            textScaleFactor: 1.3,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter'),
                          )),
                      Positioned(
                          right: 20,
                          left: 80,
                          top: MediaQuery.of(context).size.height / 4.1,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300),
                            textScaleFactor: 1.2,
                          )),
                      Positioned(
                          right: 20,
                          left: 20,
                          bottom: -MediaQuery.of(context).size.height / 26,
                          child: Container(
                            color: Colors.grey,
                            width: 250,
                            height: 2,
                          ))
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  child: Stack(
                    fit: StackFit.passthrough,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          left: 20,
                          top: MediaQuery.of(context).size.height / 16,
                          child: Icon(Icons.monetization_on_outlined)),
                      Positioned(
                          left: 80,
                          top: MediaQuery.of(context).size.height / 16,
                          child: Text(
                            'Price',
                            textScaleFactor: 1.3,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter'),
                          )),
                      Positioned(
                          left: 80,
                          top: MediaQuery.of(context).size.height / 8.5,
                          child: Text(
                            '150',
                            textScaleFactor: 2.3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter'),
                          )),
                      Positioned(
                          right: 80,
                          left: 80,
                          top: MediaQuery.of(context).size.height / 5.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(26, 188, 156, 1.0),
                              onPressed: () {},
                              child: Text(
                                'Buy Now',
                                textScaleFactor: 1.2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

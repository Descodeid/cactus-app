import 'package:flutter/material.dart';
import 'package:plant/src/feature/home/widget/bottom_description.dart';
import 'package:plant/src/feature/home/widget/detail_appBar.dart';
import 'package:plant/src/feature/home/widget/drawer.dart';
import 'package:plant/src/feature/home/widget/main_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        DetailAppBar(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(child: DrawerTile())
                      ],
                    ))),
            Expanded(
              flex: 5,
              child: Container(
                child: MainImage(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: BottomDescription(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

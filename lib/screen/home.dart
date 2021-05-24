import 'package:animation_project/widget/title.dart';
import 'package:animation_project/widget/trip_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/bg.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 160,
            child: ScreenTitle(
              text: "Hello",
            ),
          ),
          Flexible(child: TripList())
        ],
      ),
    );
  }
}

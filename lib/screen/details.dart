import 'package:animation_project/model/trips.dart';
import 'package:animation_project/widget/favorite.dart';
import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Details extends StatelessWidget {
  final Trip trip;

  const Details({Key key, this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Widget body() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            child: Image.asset(
              "image/${trip.img}",
              height: 360,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text(
              trip.title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            subtitle: Text(
              "${trip.nights} night stay for only \$${trip.price}",
              style: TextStyle(letterSpacing: 1),
            ),
            trailing: Favorite(),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              lipsum.createText(numParagraphs: 1, numSentences: 3),
              style: TextStyle(color: Colors.grey, height: 2),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:animation_project/model/trips.dart';
import 'package:animation_project/screen/details.dart';
import 'package:flutter/material.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List<Widget> tripTiles = [];
  final GlobalKey listKey = GlobalKey();

  void addTrips() {
    List<Trip> trips = [
      Trip(
          title: "Beach Paradise", price: "200", nights: "3", img: "beach.png"),
      Trip(title: "Beach Paradise", price: "200", nights: "3", img: "city.png"),
      Trip(title: "Beach Paradise", price: "200", nights: "3", img: "ski.png"),
      Trip(
          title: "Beach Paradise", price: "200", nights: "3", img: "space.png"),
    ];

    trips.forEach((Trip trip) {
      tripTiles.add(buildTile(trip));
    });
  }

  Widget buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      trip: trip,
                    )));
      },
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${trip.nights} nights",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
            ),
          ),
          Text(
            trip.title,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          )
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          "image/${trip.img}",
          height: 50,
        ),
      ),
      trailing: Text("\$${trip.price}"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: listKey,
      itemCount: tripTiles.length,
      itemBuilder: (ctx, index) {
        return tripTiles[index];
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies/src/providers/movies.dart';
import 'package:movies/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies in cinema"),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swipedTargets(),
          ],
        ),
      ),
    );
  }

  Widget _swipedTargets() {
    return CardSwiper(
      movies: [1, 2, 3, 4, 5],
    );
  }
}

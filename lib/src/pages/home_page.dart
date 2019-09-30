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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _swipedTargets(),
            _footer(context),
          ],
        ),
      ),
    );
  }

  Widget _swipedTargets() {
    final moviesProvider = new MoviesProvider();
    moviesProvider.getInCinemas();
    return FutureBuilder(
      future: moviesProvider.getInCinemas(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(
            movies: snapshot.data,
          );
        } else {
          return Container(
            height: 450,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  _footer(BuildContext context) {
    final moviesProvider = new MoviesProvider();
    moviesProvider.getPopulars();
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            "Populars",
            style: Theme.of(context).textTheme.subhead,
          ),

          // FutureBuilder(
          //   future: ,
          //   initialData: ,
          //   builder: (BuildContext context, AsyncSnapshot snapshot){
          //     return;
          //   },
          // )
        ],
      ),
    );
  }
}

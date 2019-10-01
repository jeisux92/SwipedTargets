import 'package:flutter/material.dart';
import 'package:movies/src/models/movie.dart';

class MovieHorizontal extends StatelessWidget {
  final List<Movie> movies;

  const MovieHorizontal({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.width * 0.2,
      child: PageView(
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.3,
        ),
        pageSnapping: false,
        children: _targets(context),
      ),
    );
  }

  List<Widget> _targets(BuildContext context) {
    return movies.map((movie) {
      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: FadeInImage(
                image: NetworkImage(
                  movie.getPosterImg(),
                ),
                placeholder: AssetImage("assets/no-image.jpg"),
                fit: BoxFit.cover,
                height: 100.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              movie.title,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
    }).toList();
  }
}

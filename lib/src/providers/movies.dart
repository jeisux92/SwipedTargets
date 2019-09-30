import 'package:movies/src/models/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesProvider {
  String _apiKey = 'cdf449483f6859c51996711abcb4990c';
  String _url = 'api.themoviedb.org';
  String _languaje = 'es-CO';

  Future<List<Movie>> getInCinemas() async {
    final queryStrings = {
      "api_key": _apiKey,
      "language": _languaje,
    };
    final url = Uri.https(_url, "3/movie/upcoming", queryStrings);

    final response = await http.get(url);
    final decodeData = json.decode(response.body);

    final movies = new Movies.fromJsonList(decodeData["results"]);

    return movies.items;
  }

  Future<List<Movie>> getPopulars() async {
    final queryStrings = {
      "api_key": _apiKey,
      "language": _languaje,
    };
    final url = Uri.https(_url, "3/movie/popular", queryStrings);

    final response = await http.get(url);
    final decodeData = json.decode(response.body);

    final movies = new Movies.fromJsonList(decodeData["results"]);
    print(movies.items[0].title);
    return movies.items;
  }
}

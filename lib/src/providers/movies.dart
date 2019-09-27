import 'package:movies/src/models/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesProvider {
  String _apiKey = 'cdf449483f6859c51996711abcb4990c&language';
  String _url = 'api.themoviedb.org';
  String _languaje = '';

  Future<List<Movie>> getInCinemas() async {
    final queryStrings = {
      "language": _apiKey,
      "es-CO": _languaje,
    };
    final url = Uri.https(_url, "3/movie/now_playing", queryStrings);

    final response = await http.get(url);
    final decodeData = json.decode(response.body);
    print(decodeData);
    return [];
  }
}

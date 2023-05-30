class APIConstants {
  static const String apiKey = "&api_key=9813ce01a72ca1bd2ae25f091898b1c7";
  static const String url = "https://api.themoviedb.org/3";
  static const String imgPath = "https://image.tmdb.org/t/p/w500/";
  static const String path = "/discover/movie?sort_by=popularity.desc";
  static const String apiUrl = url + path + apiKey;
}

class RoutesConstants {
  static const String home = "home";
  static const String details = "details";
}

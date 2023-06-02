class APIConstants {
  static const String apiKey = "&api_key=0f875afbcd375543e50159439effb566";
  static const String url = "https://api.themoviedb.org/3";
  static const String imgPath =
      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2";
  static const String path = "/discover/movie?sort_by=popularity.desc";
  static const String apiUrl = url + path + apiKey;
}

class RoutesConstants {
  static const String home = "home";
  static const String details = "details";
}

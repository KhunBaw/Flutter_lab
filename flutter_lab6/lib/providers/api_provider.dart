import 'package:http/http.dart' as http;

class Service {
  Future<http.Response> fetchAlbum() {
    return http.get(Uri.file('../cs_books.json'));
  }
}

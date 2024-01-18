import 'package:peminjam_perpustakaan_app/app/data/provider/storage_provider.dart';

class Endpoint {
  static const String baseUrlApi = "https://api-perpustakaan.abadjayasenantiasa.com/api/v1/user/";


  static const String register = "${baseUrlApi}register";
  static const String login = "${baseUrlApi}login";
  static const String book = "${baseUrlApi}book";
  static const String pinjam = "${baseUrlApi}pinjam";
}

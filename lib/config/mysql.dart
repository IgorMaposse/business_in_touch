import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost', user = 'root', password = '', db = 'hotel';
  static int port = 3306;
  Mysql();
  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: 'localhost', port: 3306, user: 'root', password: '', db: 'hotel');
    var conn = await MySqlConnection.connect(settings);
    return conn;
  }
}

import 'package:data_connection_checker/data_connection_checker.dart';

class NetworkInformation {
  static Future<bool> checkConnectivity() async {
    return await DataConnectionChecker().hasConnection;
  }
  
}
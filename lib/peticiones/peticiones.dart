import 'package:dio/dio.dart';


class Peticioes {


  dynamic server;

  Future<void> getInfoServer( String endPoint ) async {

    if (endPoint.isEmpty ) {

      
    }else{
      final response = await Dio().get( 'https://api.mcsrvstat.us/2/$endPoint' );

      print('https://api.mcsrvstat.us/2/$endPoint');

      server = response.data;
    }
  }
}
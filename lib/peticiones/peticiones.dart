import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Peticiones {


  dynamic server;

  Future<void> getInfoServer( String endPoint ) async {

    if (endPoint.isEmpty ) {
      print('endoPoint Vacio');
      
    }else{

      final response = await Dio().get( 'https://api.mcsrvstat.us/2/$endPoint' );

      
      
      server = response.data;

      

      





    }

    


    

    


  }


}
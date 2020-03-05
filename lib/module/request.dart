import 'package:dio/dio.dart';
import 'package:flutter_toutiao_app/module/config.dart';

class RequestModule {
  static httpRequest (method, url) async {
    try {
      Response response;
      switch (method) {
        case 'get':
          response = await Dio().get(Config.baseUrl + url);  
        break;
        case 'post':
          response = await Dio().post(Config.baseUrl + url);  
        break;
      }
      return response;
    } catch (err) {
      print(err);
    }
  }
}
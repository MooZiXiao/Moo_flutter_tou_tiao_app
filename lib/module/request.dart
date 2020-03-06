import 'package:dio/dio.dart';
import 'package:flutter_toutiao_app/module/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

Dio dio = new Dio();


class RequestModule {
  static httpRequest (method, url, data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.options.headers['Authorization'] = prefs.getString('token') ?? '';
    try {
      Response response;
      switch (method) {
        case 'get':
          response = await Dio().get(Config.baseUrl + url);  
        break;
        case 'post':
          response = await Dio().post(Config.baseUrl + url, data:data);  
        break;
      }
      return response;
    } catch (err) {
      print(err);
    }
  }
}
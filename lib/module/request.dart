import 'package:dio/dio.dart';
import 'package:flutter_toutiao_app/module/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

Dio dio = new Dio();


class RequestModule {
  // 可选[data]
  static httpRequest (method, url, data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.options.headers['Authorization'] = 'Bearer ' + prefs.getString('token') ?? '';
    try {
      Response response;
      switch (method) {
        case 'get':
          response = await Dio().get(Config.baseUrl + url);  
        break;
        case 'post':
          response = await Dio().post(Config.baseUrl + url, data:data);  
        break;
        case 'put':
          response = await Dio().put(Config.baseUrl + url, data:data);  
        break;
      }
      return response;
    } catch (err) {
      print(err);
    }
  }

  // 校验用户是否有token
  static checkUserToken () async {
    SharedPreferences refs = await SharedPreferences.getInstance();
    return refs.getString('token');
  }
}


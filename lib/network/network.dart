import 'package:dio/dio.dart';
class NetWorkControl {
  static final Dio dio = Dio();

  static Future post(String url , {Map header , Map param}) async {
      dio.options.connectTimeout = CONNECT_TIME_OUT;
      dio.options.receiveTimeout = RECEIVE_TIME_OUT;
      try {
        Response response  = await dio.post(url,queryParameters: param);
        return response.data;
      } catch (e) {
        print(e);
      }

  }

  static Future get(String url,{Map header , Map param}) async {
    dio.options.connectTimeout = CONNECT_TIME_OUT;
    dio.options.receiveTimeout = RECEIVE_TIME_OUT;
//    if(header != null) {
//
//    }else {
//      header = Map();
//      header["Content-Type"] = "application/json";
//
//    }
    try {
      Response response  = await dio.get(url,queryParameters: param);
      return response.data;
    } catch (e) {
      print(e);
    }




  }

  static final CONNECT_TIME_OUT = 5000 ;

  static final RECEIVE_TIME_OUT = 3000 ;

}
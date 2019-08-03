import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpRequest {
  final JsonDecoder _decoder = new JsonDecoder();
  Future post(String url, dynamic data) async {
    http.Response response = await http.post(url,body: data);
    if(response.statusCode < 200 || response.statusCode > 300){
      throw new Exception('Failed');
    } else {
      return _decoder.convert(response.body);
    }
  }
}
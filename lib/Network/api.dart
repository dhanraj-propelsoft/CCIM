import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Network {
  final String _url = 'http://127.0.0.1:8000/api';

  //final String _url = 'http://wfm.mypropelsoft.com/api';
  var token;
  var alldata;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var tempToken = localStorage.getString('token');
    token = json.decode(tempToken!);
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        "Access-Control_Allow_Origin": "*",
        'Authorization': 'Bearer $token'
      };

  postMethodWithOutToken(data, apiUrl) async {
    var fullUrl = _url + apiUrl;

    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }
}

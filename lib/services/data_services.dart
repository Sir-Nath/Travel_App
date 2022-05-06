import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/data_model.dart';

class DataServices{
  String baseUrl = 'http;//mark.bslmeiyu.com/api';

  Future<List> getInfo() async {
    var apiUrl = '/getplaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromjson(e)).toList();
      }
      else {
        return <DataModel>[];
      }
    }catch (e) {
      print(e);
      return<DataModel>[];
      }
    }
  }
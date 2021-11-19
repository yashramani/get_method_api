import 'dart:convert';
import 'dart:core';
import 'package:dio/dio.dart';
import 'package:get_method_api/model.dart';
import 'package:http/http.dart' as http;


class getData{
   Future<Model?> getApiData() async {
    try {
      final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
      if (response.statusCode == 200) {
        return Model.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load album');
      }
    }
    catch(e)
    {
      print("e----------------------------------$e");
    }
  }
}
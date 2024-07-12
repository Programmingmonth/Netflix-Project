import 'dart:convert';
import 'package:flutter/services.dart';

class ExampleData {
  static Future<List<dynamic>> loadData() async {
    String jsonString = await rootBundle.loadString('assets/data/sample_data.json');
    return json.decode(jsonString);
  }
}

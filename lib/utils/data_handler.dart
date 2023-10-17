import 'package:flutter/services.dart';
import 'dart:convert';

class DataHandler {
  static Future<Map<String, dynamic>> loadJobData() async {
    // load json file in assets
    String jsonString = await rootBundle.loadString('assets/data/dbJobs.json');
    return jsonDecode(jsonString);
  }
}

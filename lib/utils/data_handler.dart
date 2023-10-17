import 'package:flutter/services.dart';
import 'dart:convert';

class DataHandler {
  String _capitalize(String str) {
    if (str.isEmpty) {
      return str;
    }
    return str[0].toUpperCase() + str.substring(1);
  }

  Future<List<Map<String, dynamic>>> loadJobData() async {
    // load json file in assets
    String jsonString = await rootBundle.loadString('assets/data/db.json');
    List<Map<String, dynamic>> result = [];

    List<dynamic> jobs = jsonDecode(jsonString)['jobs'];
    for (var job in jobs) {
      // "id": "4",
      // "title": "DevOps Engineer",
      // "description": "Experienced with Docker and Kubernetes.",
      // "employment_type": "part_time",
      // "location": "cairo"
      job['employment_type'] =
          _capitalize(job['employment_type']).replaceAll('_', ' ');
      job['location'] = _capitalize(job['location']);

      result.add(job);
    }
    print(result);
    return result;
  }
}

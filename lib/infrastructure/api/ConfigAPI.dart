import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class ConfigAPI {
  static final baseUrl = "http://192.168.254.168:8000";

  static initProjectConfig() async {
    try {
      var projectConfig = await Hive.openBox('config');
      final response = await http.get(
        Uri.parse('${ConfigAPI.baseUrl}/api/projectConfig'),
      );
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        projectConfig.put('project_config', jsonDecode(response.body));
        print(projectConfig.get('project_config'));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
      // projectConfig.put('project_config', householdData);
    } catch (e) {
      throw e;
    }
  }

  static getAllHouseholdData() async {
    try {
      var household = await Hive.openBox('households');
      final response = await http
          .get(Uri.parse('${ConfigAPI.baseUrl}/api/documents?limit=-1'));
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        final data = jsonDecode(response.body)['data'];
        // print(data[0]['family_head_id']);
        for (int i = 0; i < data.length; i++) {
          if (data[i]['family_head_id'] != null) {
            household.put(data[i]['family_head_id'], data[i]);
          }
        }
        print(household.toMap());
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
      // projectConfig.put('project_config', householdData);
    } catch (e) {
      throw e;
    }
  }

  static getAllCitizenData() async {
    try {
      // var projectConfig = await Hive.openBox('config');
      final response = await http
          .get(Uri.parse('http://192.168.254.200/api/citizen?limit=-1'));
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        print(response.body);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
      // projectConfig.put('project_config', householdData);
    } catch (e) {
      throw e;
    }
  }

  static searchCitizen(String searchPattern) async {
    try {
      var citizen = await Hive.openBox('citizen');

      var searchData = citizen.values.where((user) {
        return user['first_name']
                .toLowerCase()
                .contains(searchPattern.toLowerCase()) ||
            user['last_name']
                .toLowerCase()
                .contains(searchPattern.toLowerCase());
      });
      // (user.first_name as String).startsWith(searchPattern)

      return searchData;
    } catch (e) {
      throw e;
    }
  }
}

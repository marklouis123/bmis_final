import 'package:bmis_final/infrastructure/api/CitizenAPI.dart';
import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/models/FormSection.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CitizenProvider with ChangeNotifier {
  List? _citizenList;

  var _searchCitizenList = [];

  List get citizenSuggestion {
    return _searchCitizenList
        .map((e) =>
            e['last_name'].toString() +
            ", " +
            e['first_name'] +
            " " +
            (e['middle_name'] ?? '').toString())
        .toList();
  }

  CitizenProvider() {
    init();
  }

  List get citizenseList => _citizenList ?? [];
  void init() async {
    var citizenBox = await Hive.openBox('citizens');
    this._citizenList = citizenBox.get('list');
  }

  void searchCitizen(String pattern) async {
    print('Pattern: $pattern');
    var result = await CitizenAPI.searchCitizen(pattern);
    print('Saerchalsdf: $result');

    _searchCitizenList = result.toList();

    notifyListeners();
  }

  void saveCitizen() {}
}

import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/models/FormSection.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CitizenProvider with ChangeNotifier {
  List? _citizenList;

  CitizenProvider() {
    init();
  }

  List get citizenseList => _citizenList ?? [];
  void init() async {
    var citizenBox = await Hive.openBox('citizens');
    this._citizenList = citizenBox.get('list');
  }

  void saveCitizen() {}
}

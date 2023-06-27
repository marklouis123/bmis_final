import 'package:bmis_final/domain/household/models/FamilyIdentification.dart';
import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/models/FormSection.dart';
import 'package:flutter/material.dart';

import '../infrastructure/api/HouseholdAPI.dart';

class Household with ChangeNotifier {
  Household(Map setup) {
    this._setup = setup;
    getAllHouseholdData();
  }
  late Map _setup;

  int _count = 0;
  int _currentTab = 0;
  // Map _currentFormSection get => _setup.currentFormSection;
  final Map _documentData = {};
  int get currentTab => _currentTab;
  int get count => _count;
  Map get document => _documentData;
  FormSection get currentSection => tabs[currentTab];
  List _houseHoldList = [];

  List get houseHoldList => _houseHoldList;
  List<FormSection> get createTabs => [tabs[0]];

  Map getDataBySection(section) {
    if (_documentData.containsKey(section.key))
      return _documentData[section.key];
    return {};
  }

  List<FormSection> get tabs {
    List<FormSection> list = [];

    list = (_setup['columns'] as List)
        .asMap()
        .entries
        .map((entry) => FormSection(
            key: entry.value['key'],
            index: entry.key,
            label: entry.value['label'],
            childColumns: (entry.value['child_columns'] as List)
                .asMap()
                .entries
                .map((val) => BMISFormField(
                    disabledOnUpdate: val.value['disabledOnUpdate'] ?? false,
                    required: val.value['required'] ?? false,
                    dataType: val.value['data_type'] ?? 'text',
                    subsectionKey: null,
                    sectionKey: val.value['parent_key'] ?? 'not-set',
                    parentKey: val.value['parent_key'] ?? 'not-set',
                    labelText: val.value['label'] ?? '',
                    hintText: val.value['hint_text'] ?? '',
                    options: val.value['options'] ?? [],
                    question: val.value['question'] ?? '',
                    label: val.value['label'] ?? '',
                    childColumns: val.value['child_columns'] ?? [],
                    conditional_fields: val.value['conditional_fields'],
                    initialValues: val.value['initialValues'] ?? null,
                    key: val.value['key']))
                .toList()))
        .toList();
    return list;
  }

  void selectTab(index) {
    _currentTab = index;
    notifyListeners();
  }

  List getMultiEntryValue(section, subsection) {
    if (_documentData.containsKey(section) &&
        _documentData[section].containsKey(subsection)) {
      return _documentData[section][subsection];
    } else {
      return [];
    }
  }

  dynamic getFieldValue(section, subsection, key) {
    if (subsection == null) {
      if (_documentData.containsKey(section) &&
          (_documentData[section] as Map).containsKey(key)) {
        return _documentData[section][key];
      } else {
        return null;
      }
    } else {
      if (_documentData.containsKey(section) &&
          (_documentData[section] as Map).containsKey(key)) {
        return _documentData[section][key];
      } else {
        return null;
      }
    }
  }

  void deleteMultiFieldEntry(section, subsection, index) {
    (_documentData[section][subsection] as List).removeAt(index);
    notifyListeners();
  }

  void onFieldChange(section, subsection, key, value, dataType,
      {index = null, isUpdate = false}) {
    if (!_documentData.containsKey(section)) {
      _documentData[section] = {};
    }
    if (subsection == null) {
      _documentData[section][key] = value;
    } else {
      if (!(_documentData[section] as Map).containsKey(subsection)) {
        if (dataType == "multi_entry") {
          _documentData[section][subsection] = [];
        } else {
          _documentData[section][subsection] = {};
        }
      }
      if (dataType == "multi_entry") {
        if (isUpdate == true) {
          (_documentData[section][subsection] as List)[index] = value;
        } else {
          (_documentData[section][subsection] as List).add(value);
        }
      } else {
        _documentData[section][subsection][key] = value;
      }
    }
    print(_documentData);
    notifyListeners();
  }

  void resetHouseholdData() async {
    await HouseholdAPI.resetData();
    notifyListeners();
  }

  void createHousehold(section) async {
    // print(section);
    var data = _documentData[section];
    // var familyIdentification = FamilyIdentification(
    //     address: data['address'] != null
    //         ? Address(
    //             latitude: data['address']['latitude'],
    //             longitude: data['address']['longitude'],
    //             houseNumber: data['address']['house_number'],
    //             StreetOrSubdivision: data['address']['street_or_subdivision'],
    //             purok: data['address']['purok'],
    //             barangay: data['address']['barangay'],
    //             municipality: data['address']['municipality'],
    //             province: data['address']['province'])
    //         : null,
    //     familyHeadID: data['family_head_id'],
    //     familyStatus: data['family_status'],
    //     headOfFamily: data['pangalan_ng_puno_ng_pamilya'] != null
    //         ? HeadOfFamily(
    //             firstName: data['pangalan_ng_puno_ng_pamilya']['first_name'],
    //             middleName: data['pangalan_ng_puno_ng_pamilya']['middle_name'],
    //             lastName: data['pangalan_ng_puno_ng_pamilya']['last_name'],
    //             qualifier: data['pangalan_ng_puno_ng_pamilya']['qualifier'])
    //         : null,
    //     houseHoldType: data['household_type'],
    //     householdCondition: HouseholdCondition(
    //         householdCondition: data['household_condition'],
    //         extendFamily: data['household_condition_extended']));

    // print('Data: ${familyIdentification.toMap()}');

    // var success = await HouseholdAPI.createHousehold(
    //     familyIdentification.toMap(), familyIdentification.familyHeadID ?? "");

    var success =
        await HouseholdAPI.createHousehold(data, data['family_head_id']);

    getAllHouseholdData();
    notifyListeners();
  }

  void getAllHouseholdData() async {
    var data = await HouseholdAPI.getHouseholdIndex();
    _houseHoldList = data.entries.map((val) => val.value).toList();
    notifyListeners();
  }

  Future<Map> getHousehold(String familyHeadID) async {
    var data = await HouseholdAPI.getHousehold(familyHeadID) as Map;
    return data;
  }
}

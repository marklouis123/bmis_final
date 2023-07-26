import 'package:bmis_final/domain/household/models/FamilyIdentification.dart';
import 'package:bmis_final/infrastructure/api/ConfigAPI.dart';
import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/models/FormSection.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../infrastructure/api/HouseholdAPI.dart';
import 'package:hive/hive.dart';

class Household with ChangeNotifier {
  Household() {
    getHouseholdList(null);
    getStatusCount();
    // ConfigAPI.initProjectConfig();
    // ConfigAPI.getAllHouseholdData();
    this.initProject();
  }
  late Map _setup;

  int _count = 0;
  int _currentTab = 0;
  int _statusTab = 0;
  Map _statusCount = {
    0: 0,
    1: 0,
    2: 0,
  };
  // Map _currentFormSection get => _setup.currentFormSection;
  Map _documentData = {};
  int get currentTab => _currentTab;
  int get count => _count;
  int get statusTab => _statusTab;
  Map get document => _documentData;
  FormSection get currentSection => tabs[currentTab];
  List _houseHoldList = [];
  Map get statusCount => _statusCount;
  List get houseHoldList => _houseHoldList;
  List<FormSection> get createTabs => [tabs[0]];
  void updateStatusTab(tab) {
    _statusTab = tab;
    getHouseholdList(null);
    notifyListeners();
  }

  void getStatusCount() async {
    var data = await HouseholdAPI.statusTabCount();
    _statusCount = data;
    notifyListeners();
  }

  void getHouseholdList(filter) async {
    var data = await HouseholdAPI.getHouseholdIndex(
        filter: filter, statusTab: _statusTab);
    // _houseHoldList = data.entries.map((val) => val.value).toList();

    this._houseHoldList = data.toList();
    getStatusCount();
    notifyListeners();
  }

  Map getDataBySection(section) {
    if (_documentData.containsKey(section.key))
      return _documentData[section.key];
    return {};
  }

  void initProject() async {
    this._setup = await HouseholdAPI.getProjectConfig();
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
    print('Subsection: $subsection');
    if (_documentData.containsKey(subsection)) {
      return _documentData[subsection];
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
    print('On Field Change $_documentData');
    notifyListeners();
  }

  Future resetHouseholdData() async {
    await HouseholdAPI.resetData();
    // getAllHouseholdData();
    // notifyListeners();
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

    var success = await HouseholdAPI.createHousehold(
        {section: data}, data['family_head_id']);

    getAllHouseholdData();
    notifyListeners();
  }

  void getAllHouseholdData() async {
    var data = await HouseholdAPI.getHouseholdIndex();
    // print('Data $data');
    _houseHoldList = data.entries.map((val) => val.value).toList();

    // print('Index $_houseHoldList');
    notifyListeners();
  }

  Future<bool> updateHousehold() async {
    try {
      print('Payload $_documentData');
      var data = await HouseholdAPI.updateHousehold(_documentData,
          _documentData['family_identification']['family_head_id']);
      // _documentData = {};
      // notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<Map> getHousehold(String familyHeadID) async {
    var data = await HouseholdAPI.getHousehold(familyHeadID) as Map;
    return data;
  }

  void selectHouseholdForUpdate(Map household) {
    print('Household to upodate: $household');
    _documentData = household;
    _currentTab = 0;
    notifyListeners();
  }

  void resetDocumentForm() {
    _currentTab = 0;
    _documentData = {};
    notifyListeners();
  }
}

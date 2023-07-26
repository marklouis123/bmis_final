import 'package:hive/hive.dart';

class HouseholdAPI {
  static getProjectConfig() async {
    try {
      var projectConfig = await Hive.openBox('config');
      return await projectConfig.get('project_config');
    } catch (e) {
      return e;
    }
  }

  static Future<dynamic> getHouseholdIndex({filter, statusTab}) async {
    try {
      var household = await Hive.openBox('households');
      if (filter != null) {
        switch (statusTab) {
          case 0:
            {
              return household.values.where((element) =>
                  (element['family_head_id'].toString() == filter ||
                      element['pangalan_ng_puno_ng_pamilya']['last_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['first_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['middle_name']
                          .toLowerCase()
                          .startsWith(filter)) &&
                  element['updated'] == null);
            }
          case 1:
            {
              return household.values.where((element) =>
                  (element['family_head_id'].toString() == filter ||
                      element['pangalan_ng_puno_ng_pamilya']['last_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['first_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['middle_name']
                          .toLowerCase()
                          .startsWith(filter)) &&
                  element['updated'] != null &&
                  (element['done'] == null || element['done'] == false));
            }
          case 2:
            {
              return household.values.where((element) =>
                  (element['family_head_id'].toString() == filter ||
                      element['pangalan_ng_puno_ng_pamilya']['last_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['first_name']
                          .toLowerCase()
                          .startsWith(filter) ||
                      element['pangalan_ng_puno_ng_pamilya']['middle_name']
                          .toLowerCase()
                          .startsWith(filter)) &&
                  element['updated'] != null &&
                  element['done'] == true);
            }
        }
      }
      switch (statusTab) {
        case 0:
          {
            return household.values
                .where((element) => element['updated'] == null);
          }
        case 1:
          {
            return household.values.where((element) =>
                element['updated'] != null &&
                (element['done'] == null || element['done'] == false));
          }
        case 2:
          {
            return household.values.where((element) =>
                element['updated'] != null && element['done'] == true);
          }
      }
      return household.values;
    } catch (e) {
      return e;
    }
  }

  static Future<dynamic> statusTabCount() async {
    try {
      var household = await Hive.openBox('households');
      var data = Map();
      data[0] = household.values
          .where((element) => element['updated'] == null)
          .length;
      data[1] = household.values
          .where((element) =>
              element['updated'] != null &&
              (element['done'] == null || element['done'] == false))
          .length;
      data[2] = household.values
          .where((element) =>
              element['updated'] != null && element['done'] == true)
          .length;
      return data;
    } catch (e) {
      return e;
    }
  }

  static createHousehold(Map householdData, String familyHeadID) async {
    try {
      var household = await Hive.openBox('households');
      household.put(familyHeadID, householdData);
      return true;
    } catch (e) {
      throw e;
    }
  }

  static getHousehold(String familyHeadID) async {
    try {
      var household = await Hive.openBox('households');
      household.get(familyHeadID);
      return true;
    } catch (e) {
      return e;
    }
  }

  static updateHousehold(Map householdData, String familyHeadID) async {
    try {
      print('Household Payload: $householdData');
      var household = await Hive.openBox('households');
      await household.put(familyHeadID, householdData);
      return true;
    } catch (e) {
      return e;
    }
  }

  static resetData() async {
    try {
      var household = await Hive.openBox('households');
      household.deleteFromDisk();
      return true;
    } catch (e) {
      return e;
    }
  }

  //getHouseholdIndex
  //update document
  //update family identification
  //update family information
  //update health information
  //update family Environment and Sanitation
  //update peace and order
  //update agricultural information
  //update nipa and and production
  //update disaster reduction
  //update family members
  //create family identification
  //get family identification
  //get family information
  //get health information
  //get family Environment and Sanitation
  //get peace and order
  //get agricultural information
  //get nipa and and production
  //get disaster reduction
  //get family members
}

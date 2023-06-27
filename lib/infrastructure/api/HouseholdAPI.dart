import 'package:hive/hive.dart';

class HouseholdAPI {
  static getHouseholdIndex() async {
    try {
      var household = await Hive.openBox('households');
      return household.toMap();
    } catch (e) {
      return e;
    }
  }

  static createHousehold(Map household, String familyHeadID) async {
    try {
      var household = await Hive.openBox('households');
      household.put(familyHeadID, household);
      return true;
    } catch (e) {
      return e;
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

  static updateHousehold(Map household, String familyHeadID) async {
    try {
      var household = await Hive.openBox('households');
      household.put(familyHeadID, household);
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

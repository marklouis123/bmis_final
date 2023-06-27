class FamilyIdentification {
  final String? familyHeadID;
  final String? houseHoldType;
  final Address? address;
  final HeadOfFamily? headOfFamily;
  final HouseholdCondition? householdCondition;
  final String? familyStatus;

  FamilyIdentification({
    required this.familyHeadID,
    required this.houseHoldType,
    required this.address,
    required this.headOfFamily,
    required this.householdCondition,
    required this.familyStatus,
  });

  Map toMap() {
    return {
      "family_head_id": familyHeadID,
      "household_type": houseHoldType,
      "family_status": familyStatus,
      "address": {
        'latitude': address?.latitude,
        'longitude': address?.longitude,
        'house_number': address?.houseNumber,
        'street_or_subdivision': address?.StreetOrSubdivision,
        'purok': address?.purok,
        'barangay': address?.barangay,
        'municipality': address?.municipality,
        'province': address?.province,
      },
      "pangalan_ng_puno_ng_pamilya": {
        'first_name': headOfFamily?.firstName,
        'middle_name': headOfFamily?.middleName,
      },
      "household_condition": householdCondition?.householdCondition,
      "household_condition_extended": householdCondition?.extendFamily
    };
  }

//   Map rules = {
//     "family_head_id": ['required'],
//     "household_type": ['required'],
//     "address": ['required'],
//     "head_of_family": ['required'],
//     "household_condition": ['required'],
//     "family_status": ['required']
// };
}

class Address {
  final String? latitude;
  final String? longitude;
  final String? houseNumber;
  final String? StreetOrSubdivision;
  final String? purok;
  final String? barangay;
  final String? municipality;
  final String? province;

  Address(
      {required this.latitude,
      required this.longitude,
      required this.houseNumber,
      required this.StreetOrSubdivision,
      required this.purok,
      required this.barangay,
      required this.municipality,
      required this.province});
}

class HeadOfFamily {
  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? qualifier;

  HeadOfFamily(
      {required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.qualifier});
}

class HouseholdCondition {
  final String? householdCondition;
  final String? extendFamily;

  HouseholdCondition({this.householdCondition, this.extendFamily});
}

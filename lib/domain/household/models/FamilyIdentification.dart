class FamilyIdentification {
  final String familyHeadID;
  final String houseHoldType;
  final Address address;
  final HeadOfFamily headOfFamily;
  final HouseholdCondition householdCondition;
  final String familyStatus;

  FamilyIdentification(this.familyHeadID, this.houseHoldType, this.address,
      this.headOfFamily, this.householdCondition, this.familyStatus);
}

class Address {
  final double latitude;
  final double longitude;
  final String houseNumber;
  final String StreetOrSubdivision;
  final String purok;
  final String barangay;
  final String municipality;
  final String province;

  Address(
      this.latitude,
      this.longitude,
      this.houseNumber,
      this.StreetOrSubdivision,
      this.purok,
      this.barangay,
      this.municipality,
      this.province);
}

class HeadOfFamily {
  final String firstName;
  final String middleName;
  final String lastName;
  final String qualifier;

  HeadOfFamily(this.firstName, this.middleName, this.lastName, this.qualifier);
}

class HouseholdCondition {
  final String householdCondition;
  final String? extendFamily;

  HouseholdCondition(this.householdCondition, this.extendFamily);
}

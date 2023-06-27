import 'package:bmis_final/domain/household/models/FamilyIdentification.dart';

class HouseholdDocument {
  final String familyHeadID;
  final FamilyIdentification familyIdentification;

  HouseholdDocument(this.familyHeadID, this.familyIdentification);
}

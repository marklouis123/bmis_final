import 'package:hive/hive.dart';

class CitizenAPI {
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

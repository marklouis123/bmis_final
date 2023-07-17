import 'package:faker/faker.dart';

class CitizenSeeder {
  CitizenSeeder(int count) {}

  static List<Map<String, dynamic>> generateCitizen(int count) {
    var faker = new Faker();
    var random = RandomGenerator();
    List<Map<String, dynamic>> list = [];

    for (var x = 0; x < count; x++) {
      list.add(Citizen(
              id: 'BM-' + faker.randomGenerator.integer(5).toString(),
              first_name: faker.person.firstName(),
              last_name: faker.person.lastName(),
              middle_name: faker.person.lastName(),
              birthday: faker.date.dateTime(minYear: 1970, maxYear: 2022),
              gender: Gender.values[random.integer(6)])
          .toMap());
    }

    return list;
  }
}

enum Gender { Male, Female, Lesbian, Gay, Bisexual, Transgender }

class Citizen {
  String? id;
  String? first_name;
  String? last_name;
  String? middle_name;
  DateTime? birthday;
  Gender? gender;

  Citizen(
      {this.id,
      this.first_name,
      this.last_name,
      this.middle_name,
      this.birthday,
      this.gender});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'first_name': this.first_name,
      'middle_name': this.middle_name,
      'last_name': this.last_name,
      'birthday': this.birthday,
      'gender': this.gender.toString(),
    };
  }
}

List citizenList = [
  {
    "first_name": "",
    "last_name": "",
    "middle_name": "",
    "sex_or_gender": "",
    "birthday": ""
  },
  {
    "first_name": "",
    "last_name": "",
    "middle_name": "",
    "sex_or_gender": "",
    "birthday": ""
  }
];

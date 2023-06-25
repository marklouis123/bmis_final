import 'package:bmis_final/application/CitizenProvider.dart';
import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/config/seeder/CitizenSeeder.dart';
import 'package:bmis_final/presentation/components/ScrollableTab.dart';
import 'package:bmis_final/presentation/pages/HouseholdPage.dart';
import 'package:bmis_final/presentation/pages/UpdateHouseholdPage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'config/householdConfig.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  var citizenBox = await Hive.openBox('citizens');

  // List<Map<String, dynamic>> list = CitizenSeeder.generateCitizen(200);

  // citizenBox.put('list', list);

  // print('Name: ${citizenBox.get('list')}');
  // final collection = await BoxCollection.open(
  //   'MyFirstFluffyBox', // Name of your database
  //   {'cats', 'dogs'}, // Names of your boxes
  //   path:
  //       './', // Path where to store your boxes (Only used in Flutter / Dart IO)
  // );
  // final catsBox = collection.openBox<Map>('cats');

  // // Put something in
  // catsBox.put('fluffy', {'name': 'Fluffy', 'age': 4});
  // catsBox.put('loki', {'name': 'Loki', 'age': 2});

  // // Get values of type (immutable) Map?
  // final loki = await catsBox.get('loki');
  // print('Loki is ${loki?['age']} years old.');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMIS Final',
      theme: ThemeData(
          primaryColor: const Color(0xff2a7a78),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xff17252a),
              onPrimary: Color(0xffffffff),
              secondary: Color(0xffffffff),
              onSecondary: Color(0xffffffff),
              error: Color(0xffff3333),
              onError: Color(0xffff3333),
              background: Color(0xff17252a),
              onBackground: Color(0xff17252a),
              surface: Color(0xff17252a),
              onSurface: Color(0xff17252a))),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => Household(setup)),
        ChangeNotifierProvider(create: (_) => CitizenProvider()),
      ], child: HouseholdPage()
          // child: const UpdateHouseholdPage(),
          ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffDEF2F1),
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: Container(
//           padding: const EdgeInsets.all(8.0),
//           margin: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 100,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: const [
//                     MyCircle(),
//                     MyCircle(),
//                     MyCircle(),
//                     MyCircle(),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: ListView(
//                   children: const <Widget>[
//                     Text(
//                       'You have pushed the button this many times:',
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     MySquare(),
//                     MySquare(),
//                     MySquare(),
//                     FieldWidget(
//                       question: '',
//                       labelText: 'Family Head ID',
//                       hintText: 'Enter Text Here',
//                       dataType: 'number',
//                       options: [],
//                     ),
//                     FieldWidget(
//                       question: '32. asda',
//                       labelText: 'Family Head ID',
//                       hintText: 'Enter Text Here',
//                       dataType: 'text',
//                       options: [],
//                     ),
//                     FieldWidget(
//                       question: '',
//                       options: ['1', '2'],
//                     ),
//                     FieldWidget(
//                       question: '1. asda',
//                       options: ['1', '2'],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class ScrollableTabs extends StatelessWidget {
//   let tabs = ["Family Identification"];

//   const ScrollableTabs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return List;
//   }
// }

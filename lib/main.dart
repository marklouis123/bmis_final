import 'package:bmis_final/application/CitizenProvider.dart';
import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/config/seeder/CitizenSeeder.dart';
import 'package:bmis_final/presentation/components/ScrollableTab.dart';
import 'package:bmis_final/presentation/pages/HouseholdPage.dart';
import 'package:bmis_final/presentation/pages/UpdateHouseholdPage.dart';
import 'package:bmis_final/presentation/pages/household/CreateHousehold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'config/householdConfig.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Household(setup)),
          ChangeNotifierProvider(create: (_) => CitizenProvider()),
        ],
        child: MaterialApp.router(
          title: 'Provider Demo',
          routerConfig: router(),
        ),
        // child: const UpdateHouseholdPage(),
      ),
    );
  }
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/householdPage',
    routes: [
      GoRoute(
        path: '/householdPage',
        builder: (context, state) => const HouseholdPage(),
        routes: [
          GoRoute(
            path: 'createHousehold',
            builder: (context, state) => const CreateHouseholdPage(),
          ),
        ],
      ),
    ],
  );
}

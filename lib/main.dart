import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/models/circle.dart';
import 'package:bmis_final/models/square.dart';
import 'package:bmis_final/presentation/pages/UpdateHouseholdPage.dart';
import 'package:bmis_final/screens/testing_screen.dart';
import 'package:bmis_final/widgets/add_contact_number_widget.dart';
import 'package:bmis_final/widgets/contact_tile.dart';
import 'package:flutter/material.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMIS Final',
      theme: ThemeData(
        primaryColor: Color(0xff2a7a78),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Household()),
        ],
        child: const UpdateHouseholdPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDEF2F1),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyCircle(),
                    MyCircle(),
                    MyCircle(),
                    MyCircle(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MySquare(),
                    MySquare(),
                    MySquare(),
                    FieldWidget(
                      question: '',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'number',
                      options: [],
                    ),
                    FieldWidget(
                      question: '32. asda',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'text',
                      options: [],
                    ),
                    FieldWidget(
                      question: '',
                      options: ['1', '2'],
                    ),
                    FieldWidget(
                      question: '1. asda',
                      options: ['1', '2'],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class ScrollableTabs extends StatelessWidget {
//   let tabs = ["Family Identification"];

//   const ScrollableTabs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return List;
//   }
// }

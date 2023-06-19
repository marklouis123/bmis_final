import 'package:bmis_final/models/circle.dart';
import 'package:bmis_final/models/square.dart';
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

class Household with ChangeNotifier {
  int _count = 0;
  int _currentTab = 0;
  Map _column = {
    "key": "family_identification",
    "label": "Family Identification",
    "data_type": "section",
    "child_columns": [
      {"key": "family_head_id", "label": "Family Head ID", "data_type": "text"},
      {
        "key": "household_type",
        "label": "Household Type",
        "data_type": "text",
        "options": ["Resident", "Institutional"]
      },
      {
        "key": "address",
        "label": "Address",
        "data_type": "subsection",
        "child_columns": [
          {"key": "latitude", "label": "Latitude", "data_type": "number"},
          {"key": "longitude", "label": "Longitude", "data_type": "number"},
          {"key": "house_no", "label": "House No.", "data_type": "text"},
          {"key": "street", "label": "Street", "data_type": "text"},
          {"key": "subdivision", "label": "Subdivision", "data_type": "text"},
          {"key": "purok", "label": "Purok", "data_type": "text"},
          {"key": "barangay", "label": "Barangay", "data_type": "text"},
          {"key": "municipality", "label": "Municipality", "data_type": "text"},
          {"key": "province", "label": "Province", "data_type": "text"}
        ]
      },
      {
        "key": "household_head",
        "label": "Head of Household",
        "data_type": "subsection",
        "child_columns": [
          {"key": "first_name", "label": "First Name", "data_type": "text"},
          {"key": "middle_name", "label": "Middle Name", "data_type": "text"},
          {"key": "last_name", "label": "Last Name", "data_type": "text"},
          {"key": "qualifier", "label": "Qualifier", "data_type": "text"}
        ]
      },
      {
        "key": "household_condition",
        "label": "Household Condition",
        "data_type": "text",
        "options": ["Owner (Main Family)", "Extended Family"]
      },
      {
        "key": "family_status",
        "label": "Family Status",
        "data_type": "text",
        "options": ["Active", "Inactive"]
      }
    ],
    "identifier": true
  };
  int get current => _currentTab;
  int get count => _count;
  List get columns => _column['child_columns'];
  List<String> get tabs =>
      ["Family Identification", "Family Information", "Health Information"];

  void increment() {
    _count++;
    notifyListeners();
  }

  void selectTab(index) {
    _currentTab = index;
    notifyListeners();
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
                      dataType: 'text',
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

class UpdateHouseholdPage extends StatelessWidget {
  const UpdateHouseholdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffdef2f1),
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text('HH-23277  Garces, Mark Louis'),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff17252a),
                      minimumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Update', style: TextStyle(fontSize: 16)),
                  ))
            ]),
        body: Container(
            child: Column(
          children: [
            SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: context.read<Household>().tabs.length,
                    itemBuilder: (context, index) {
                      var tab =
                          context.watch<Household>().tabs[index].toUpperCase();
                      if (context.watch<Household>().current == index) {
                        return Container(
                            margin: EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  minimumSize: Size(88, 36),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                ),
                                onPressed: () {
                                  print(index);
                                  context.read<Household>().selectTab(index);
                                },
                                child: Text(
                                  tab,
                                  style: TextStyle(fontSize: 16),
                                )));
                      } else {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  side: BorderSide(
                                      color: Color(0xffc3d3d4), width: 4)),
                              onPressed: () {
                                context.read<Household>().selectTab(index);
                              },
                              child: Text(tab,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor,
                                  ))),
                        );
                      }
                    })),
            Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  child: HouseholdForm()),
            )
          ],
        )));
  }
}

class HouseholdForm extends StatelessWidget {
  const HouseholdForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                  children: List.generate(
                      context.read<Household>().columns.length, (index) {
                if (context.read<Household>().columns[index]['data_type'] ==
                    'subsection') {
                  return Column(children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        color: Color(0xffdef2f1),
                        child: Row(
                          children: [
                            Container(
                              width: 5,
                              height: 50,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              context.read<Household>().columns[index]['label'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff17252a),
                              ),
                            )
                          ],
                        )),
                    ...List.generate(
                        context
                            .read<Household>()
                            .columns[index]['child_columns']
                            .length, (i) {
                      return Container(
                          margin: EdgeInsets.only(left: 10),
                          child: FieldWidget(
                            question: '',
                            labelText: context.read<Household>().columns[index]
                                ['child_columns'][i]['label'],
                            hintText: 'Enter Text Here',
                            dataType: context.read<Household>().columns[index]
                                ['child_columns'][i]['data_type'],
                            options: [],
                          ));
                    }),
                  ]);
                } else {
                  return FieldWidget(
                    question: '',
                    labelText: context.read<Household>().columns[index]
                        ['label'],
                    hintText: 'Enter Text Here',
                    dataType: context.read<Household>().columns[index]
                        ['data_type'],
                    options: [],
                  );
                }
              }))),
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

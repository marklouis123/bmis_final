import 'package:bmis_final/presentation/components/MultipleEntryField.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/Household.dart';

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
                    itemCount: context.read<Household>().columns.length,
                    itemBuilder: (context, index) {
                      var tab = context
                          .watch<Household>()
                          .columns[index]['label']
                          .toUpperCase();
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
    var currentSection =
        context.watch<Household>().columns[context.read<Household>().current];
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Column(
                  children: List.generate(
                      currentSection['child_columns'].length, (index) {
                if (currentSection['child_columns'][index]['data_type'] ==
                    'subsection') {
                  return Column(children: [
                    Container(
                        margin: EdgeInsets.only(top: 35),
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
                              currentSection['child_columns'][index]['label'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff17252a),
                              ),
                            )
                          ],
                        )),
                    ...List.generate(
                        currentSection['child_columns'][index]['child_columns']
                            .length, (i) {
                      return Container(
                          margin: EdgeInsets.only(left: 10),
                          child: FieldWidget(
                            question: '',
                            labelText: currentSection['child_columns'][index]
                                ['child_columns'][i]['label'],
                            hintText: 'Enter Text Here',
                            dataType: currentSection['child_columns'][index]
                                ['child_columns'][i]['data_type'],
                            options: currentSection['child_columns'][index]
                                ['child_columns'][i]['options'],
                            onChange: (val) {
                              context.read<Household>().onFieldChange(
                                  currentSection['key'],
                                  currentSection['child_columns'][index]['key'],
                                  currentSection['child_columns'][index]
                                      ['child_columns'][i]['key'],
                                  val,
                                  null);
                            },
                            defaultValue: null,
                            placeHolder: '',
                          ));
                    }),
                  ]);
                } else if (currentSection['child_columns'][index]
                        ['data_type'] ==
                    'multi_entry') {
                  return MultipleEntryField(
                    mainContext: context,
                    section: currentSection['key'],
                    fieldData: currentSection['child_columns'][index],
                  );
                } else {
                  return FieldWidget(
                    question: '',
                    labelText: currentSection['child_columns'][index]['label'],
                    hintText: 'Enter Text Here',
                    dataType: currentSection['child_columns'][index]
                        ['data_type'],
                    options: currentSection['child_columns'][index]['options'],
                    onChange: (val) {
                      context.read<Household>().onFieldChange(
                          currentSection['key'],
                          null,
                          currentSection['child_columns'][index]['key'],
                          val,
                          null);
                    },
                    defaultValue: null,
                    placeHolder: '',
                  );
                }
              }))),
        ),
      ),
    );
  }
}

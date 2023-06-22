// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:bmis_final/screens/add_contact_screen.dart';
import 'package:bmis_final/widgets/contact_list.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/Household.dart';

class MultipleEntryField extends StatelessWidget {
  const MultipleEntryField({
    super.key,
    required this.fieldData,
    required this.section,
    required this.mainContext,
  });

  final BuildContext mainContext;
  final Map fieldData;
  final String section;

  @override
  Widget build(BuildContext context) {
    var data = mainContext
        .watch<Household>()
        .getMultiEntryValue(section, fieldData['key']);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            fieldData['label'],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: SingleChildScrollView(
              child: Material(
            elevation: 5,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(children: [
                        ...List.generate(data.length == 0 ? 2 : data.length + 1,
                            (index) {
                          if (index == 0) {
                            return Row(children: [
                              ...List.generate(
                                  fieldData['child_columns'].length, (index) {
                                return Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 0.0), //(x,y)
                                          blurRadius: 0.2,
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    // alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //     color: Colors.transparent,
                                    //     border: Border(
                                    //         right: BorderSide(
                                    //             width: 0.5,
                                    //             color: Colors.grey))),
                                    height: 60,
                                    width: fieldData['child_columns'].length > 2
                                        ? MediaQuery.of(context).size.width /
                                                2 -
                                            80
                                        : MediaQuery.of(context).size.width /
                                                2 -
                                            62,
                                    child: Text(
                                      fieldData['child_columns'][index]
                                          ['label'],
                                      textAlign: TextAlign.center,
                                    ));
                              }),
                            ]);
                          }
                          if (data.length == 0) {
                            return Container(
                                alignment: Alignment.center,
                                height: 60,
                                width:
                                    (MediaQuery.of(context).size.width - 128),
                                child: Text(
                                  "No Data Available",
                                  textAlign: TextAlign.start,
                                ));
                          }

                          return Row(
                              children: List.generate(
                                  fieldData['child_columns'].length, (i) {
                            return Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                width: fieldData['child_columns'].length > 2
                                    ? MediaQuery.of(context).size.width / 2 - 80
                                    : MediaQuery.of(context).size.width / 2 -
                                        62,
                                child: Text(
                                  data[index - 1]
                                      [fieldData['child_columns'][i]['key']],
                                  textAlign: TextAlign.center,
                                ));
                          }));
                        })
                      ]),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(data.length + 1, (index) {
                      if (index == 0) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-1.5, 0.0), //(x,y)
                                blurRadius: 0.2,
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: 64.0,
                          height: 60.0,
                          child: Text(
                            "Action",
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      return Container(
                          height: 60.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel,
                            ),
                            onPressed: () {},
                          ));
                    }),
                  ),
                ],
              ),
            ),
          )),
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isDismissible: false,
                builder: (context) => AddDataForm(
                      mainContext: mainContext,
                      fieldData: fieldData['child_columns'] as List,
                      title: fieldData['label'],
                      section: section,
                      subsection: fieldData['key'],
                    ));
          },
          style: ElevatedButton.styleFrom(
            // margin: const EdgeInsets.only(top: 16.0),
            minimumSize: const Size.fromHeight(50),
            primary: const Color(0xff2B7A78),
          ),
          child: const Text(
            'Add',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

List<Widget> _buildCells(int count) {
  return List.generate(
    count,
    (index) => Container(
      alignment: Alignment.center,
      width: 120.0,
      height: 60.0,
      color: Colors.white,
      margin: EdgeInsets.all(4.0),
      child: Text("${index + 1}"),
    ),
  );
}

List<Widget> _buildRows(int count) {
  return List.generate(
    count,
    (index) => Row(
      children: _buildCells(10),
    ),
  );
}

class AddDataForm extends StatefulWidget {
  const AddDataForm(
      {super.key,
      required this.fieldData,
      required this.title,
      required this.section,
      required this.subsection,
      required this.mainContext});

  final BuildContext mainContext;
  final List fieldData;
  final String section;
  final String subsection;
  final String title;

  @override
  State<AddDataForm> createState() => _AddDataFormState();
}

class _AddDataFormState extends State<AddDataForm> {
  var tempData = {};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: const Color(0xff747474),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              width: 1, color: Color(0xffff3333)),
                          primary: Theme.of(context).colorScheme.error),
                      child: const Text(
                        'Close',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.mainContext.read<Household>().onFieldChange(
                            widget.section,
                            widget.subsection,
                            null,
                            tempData,
                            "multi_entry");
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff2B7A78),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Text(widget.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))),
              ...List.generate(this.widget.fieldData.length, (index) {
                return FieldWidget(
                  question: '',
                  labelText: this.widget.fieldData[index]['label'],
                  hintText: this.widget.fieldData[index]['hintText'],
                  dataType: this.widget.fieldData[index]['data_type'],
                  options: [],
                  onChange: (val) {
                    tempData[this.widget.fieldData[index]['key']] = val;
                  },
                  defaultValue: null,
                  placeHolder: '',
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class AddContactNumberWidget extends StatefulWidget {
  const AddContactNumberWidget({
    Key? key,
    this.question,
    this.context,
  }) : super(key: key);
  final String? question;
  final BuildContext? context;

  @override
  State<AddContactNumberWidget> createState() => _AddContactNumberWidgetState();
}

class _AddContactNumberWidgetState extends State<AddContactNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            widget.question!,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: widget.context!,
                builder: (context) => const AddContactScreen());
          },
          style: ElevatedButton.styleFrom(
            // margin: const EdgeInsets.only(top: 16.0),
            minimumSize: const Size.fromHeight(50),
            primary: const Color(0xff2B7A78),
          ),
          child: const Text(
            'Add',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        color: const Color(0xff747474),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FieldWidget(
                question: '',
                labelText: 'Service Provider',
                hintText: 'Enter Text Here',
                dataType: 'text',
                options: [],
                defaultValue: null,
                onChange: (val) {},
                placeHolder: '',
              ),
              FieldWidget(
                question: '',
                labelText: 'Contact Number',
                hintText: 'Enter Text Here',
                dataType: 'phone',
                options: [],
                defaultValue: null,
                onChange: (val) {},
                placeHolder: '',
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: const Color(0xff2B7A78),
                  ),
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const Expanded(
                child: ContactList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

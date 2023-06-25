// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:bmis_final/models/BMISFormField.dart';
import 'package:flutter/material.dart';
import 'package:bmis_final/widgets/contact_list.dart';
import 'package:bmis_final/widgets/field_widget.dart';
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
  final BMISFormField fieldData;
  final String section;

  @override
  Widget build(BuildContext context) {
    var data = mainContext
        .watch<Household>()
        .getMultiEntryValue(section, fieldData.key);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 16.0),
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  fieldData.label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Theme.of(context).primaryColor),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddDataForm(
                            mainContext: mainContext,
                            fieldData: fieldData.childColumns as List,
                            title: fieldData.label,
                            section: section,
                            subsection: fieldData.key,
                          ),
                        ));
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
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
                        ...List.generate(data.isEmpty ? 2 : data.length + 1,
                            (index) {
                          if (index == 0) {
                            return Row(children: [
                              ...List.generate(fieldData.childColumns.length,
                                  (index) {
                                return Container(
                                    decoration: const BoxDecoration(
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
                                    height: 60,
                                    width: fieldData.childColumns.length == 1
                                        ? MediaQuery.of(context).size.width -
                                            124
                                        : fieldData.childColumns.length > 2
                                            ? MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                80
                                            : MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                62,
                                    child: Text(
                                      fieldData.childColumns[index]['label'],
                                      textAlign: TextAlign.center,
                                    ));
                              }),
                            ]);
                          }
                          if (data.isEmpty) {
                            return Container(
                                alignment: Alignment.center,
                                height: 60,
                                width:
                                    (MediaQuery.of(context).size.width - 128),
                                child: const Text(
                                  "No Data Available",
                                  textAlign: TextAlign.start,
                                ));
                          }

                          return Row(
                              children: List.generate(
                                  fieldData.childColumns.length, (i) {
                            return Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                width: fieldData.childColumns.length > 2
                                    ? MediaQuery.of(context).size.width / 2 - 80
                                    : MediaQuery.of(context).size.width / 2 -
                                        62,
                                child: Text(
                                  data[index - 1]
                                          [fieldData.childColumns[i]['key']]
                                      .toString(),
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
                          decoration: const BoxDecoration(
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
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: 64.0,
                          height: 60.0,
                          child: const Text(
                            "Action",
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      return SizedBox(
                          height: 60.0,
                          child: PopupMenuButton(
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                    PopupMenuItem<String>(
                                      value: "edit",
                                      child: ListTile(
                                        title: Text('Update Entry'),
                                        leading: Icon(Icons.edit),
                                      ),
                                      onTap: () {
                                        Future.delayed(
                                                Duration(milliseconds: 100))
                                            .then((value) {
                                          showModalBottomSheet(
                                              context: mainContext,
                                              isDismissible: false,
                                              isScrollControlled: true,
                                              builder: (context) => Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: MediaQuery.of(
                                                                context)
                                                            .viewInsets
                                                            .bottom),
                                                    child: AddDataForm(
                                                      edit: true,
                                                      index: index - 1,
                                                      initialValue:
                                                          data[index - 1],
                                                      mainContext: mainContext,
                                                      fieldData: fieldData
                                                          .childColumns as List,
                                                      title: fieldData.label,
                                                      section: section,
                                                      subsection: fieldData.key,
                                                    ),
                                                  ));
                                        });
                                      },
                                    ),
                                    PopupMenuItem<String>(
                                      value: 'delete',
                                      child: ListTile(
                                        title: Text('Delete'),
                                        leading: Icon(
                                          Icons.delete,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error,
                                        ),
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext ctx) {
                                                return AlertDialog(
                                                  title: const Text(
                                                      'Please Confirm'),
                                                  content: const Text(
                                                      'Are you sure to delete this item?'),
                                                  actions: [
                                                    // The "Yes" button
                                                    TextButton(
                                                        onPressed: () {
                                                          // Remove the box
                                                          context
                                                              .read<Household>()
                                                              .deleteMultiFieldEntry(
                                                                  section,
                                                                  fieldData.key,
                                                                  index - 1);
                                                          // Close the dialog
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child:
                                                            const Text('Yes')),
                                                    TextButton(
                                                        onPressed: () {
                                                          // Close the dialog
                                                          Navigator.of(context)
                                                              .pop();
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text('No'))
                                                  ],
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                  ]));
                    }),
                  ),
                ],
              ),
            ),
          )),
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
      margin: const EdgeInsets.all(4.0),
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
      this.edit = false,
      this.index = 0,
      this.initialValue = const {},
      required this.fieldData,
      required this.title,
      required this.section,
      required this.subsection,
      required this.mainContext});

  final bool edit;
  final int index;
  final Map initialValue;
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
  void initState() {
    // TODO: implement initState
    tempData.addAll(widget.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.initialValue);
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Theme.of(context).colorScheme.error,
                          side: const BorderSide(
                              width: 1, color: Color(0xffff3333))),
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
                            "multi_entry",
                            index: widget.index,
                            isUpdate: widget.edit);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B7A78),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              widget.title.isNotEmpty
                  ? Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                          child: Text(widget.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))))
                  : SizedBox(),
              ...List.generate(widget.fieldData.length, (index) {
                return FieldWidget(
                  question: '',
                  labelText: widget.fieldData[index]['label'],
                  hintText: widget.fieldData[index]['hint_text'],
                  dataType: widget.fieldData[index]['data_type'],
                  options: widget.fieldData[index]['options'],
                  onChange: (val) {
                    tempData[widget.fieldData[index]['key']] = val;
                  },
                  defaultValue:
                      widget.initialValue[widget.fieldData[index]['key']],
                  placeHolder: '',
                  conditional_fields: {},
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  var menuOptions = ["Edit", "Delete"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PopupMenuButton')),
      body: Center(
        child: PopupMenuButton<String>(
          // Callback that sets the selected popup menu item.

          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: "edit",
              child: ListTile(
                title: Text('Primary text'),
                leading: Icon(Icons.label),
                trailing: Text('Metadata'),
              ),
            ),
            const PopupMenuItem<String>(
              value: 'delete',
              child: ListTile(
                title: Text('Primary text'),
                leading: Icon(Icons.label),
                trailing: Text('Metadata'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

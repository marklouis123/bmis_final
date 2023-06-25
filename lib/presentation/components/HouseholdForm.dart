import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/presentation/components/MultiSelectField.dart';
import 'package:bmis_final/presentation/components/MultipleEntryField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/FormSection.dart';
import '../../widgets/field_widget.dart';

class HouseholdForm extends StatelessWidget {
  const HouseholdForm({super.key, required this.section});

  final FormSection section;

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
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Column(
                  children: List.generate(section.childColumns.length, (index) {
                if (section.childColumns[index].dataType == 'subsection') {
                  return Column(children: [
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        color: const Color(0xffdef2f1),
                        child: Row(
                          children: [
                            Container(
                              width: 5,
                              height: 50,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              section.childColumns[index].label,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff17252a),
                              ),
                            )
                          ],
                        )),
                    ...List.generate(
                        section.childColumns[index].childColumns.length, (i) {
                      return Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: FieldWidget(
                                question: '',
                                labelText: section.childColumns[index]
                                    .childColumns[i]['label'],
                                hintText: 'Enter Text Here',
                                dataType: section.childColumns[index]
                                    .childColumns[i]['data_type'],
                                options: section.childColumns[index]
                                    .childColumns[i]['options'],
                                onChange: (val) {
                                  context.read<Household>().onFieldChange(
                                      section.key,
                                      section.childColumns[index].key,
                                      section.childColumns[index]
                                          .childColumns[i]['key'],
                                      val,
                                      null);
                                },
                                defaultValue: null,
                                placeHolder: '',
                                conditional_fields: {},
                              )),
                          context.watch<Household>().getFieldValue(
                                            section.key,
                                            section.childColumns[index].key,
                                            section.childColumns[index]
                                                .childColumns[i]['key'],
                                          ) !=
                                      null &&
                                  section.childColumns[index]
                                      .childColumns[i]['conditional_fields']
                                      .containsKey(context
                                          .watch<Household>()
                                          .getFieldValue(
                                            section.key,
                                            section.childColumns[index].key,
                                            section.childColumns[index]
                                                .childColumns[i]['key'],
                                          ))
                              ? Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: FieldWidget(
                                    question: '',
                                    labelText: section.childColumns[index]
                                                .childColumns[i][
                                            'conditional_fields'][
                                        context.read<Household>().getFieldValue(
                                            section.key,
                                            section.childColumns[index].key,
                                            section.childColumns[index]
                                                    .childColumns[i]
                                                ['key'])]['label'],
                                    hintText: 'Enter Text Here',
                                    dataType: section.childColumns[index]
                                                .childColumns[i][
                                            'conditional_fields'][
                                        context.read<Household>().getFieldValue(
                                            section.key,
                                            section.childColumns[index].key,
                                            section.childColumns[index]
                                                    .childColumns[i]
                                                ['key'])]['data_type'],
                                    options: section.childColumns[index]
                                                .childColumns[i][
                                            'conditional_fields'][
                                        context.read<Household>().getFieldValue(
                                            section.key,
                                            section.childColumns[index].key,
                                            section.childColumns[index]
                                                    .childColumns[i]
                                                ['key'])]['options'],
                                    onChange: (val) {
                                      context.read<Household>().onFieldChange(
                                          section.key,
                                          section.childColumns[index].key,
                                          section.childColumns[index]
                                                      .childColumns[i]
                                                  ['conditional_fields'][
                                              context
                                                  .read<Household>()
                                                  .getFieldValue(
                                                      section.key,
                                                      section
                                                          .childColumns[index]
                                                          .key,
                                                      section
                                                              .childColumns[index]
                                                              .childColumns[i]
                                                          ['key'])]['key'],
                                          val,
                                          null);
                                    },
                                    defaultValue: null,
                                    placeHolder: '',
                                    conditional_fields: section
                                        .childColumns[index]
                                        .childColumns[i]['conditional_fields'],
                                  ))
                              : SizedBox()
                        ],
                      );
                    }),
                  ]);
                } else if (section.childColumns[index].dataType ==
                    'multiple_select') {
                  return Column(
                    children: [
                      Container(
                        // margin: const EdgeInsets.only(top: 16.0),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(section.childColumns[index].question,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                      ),
                      MultiSelectField(
                        field: section.childColumns[index],
                      ),
                      // Center(
                      //   child: MultiSelectDialogField(
                      //     dialogHeight: 500,
                      //     items: [],
                      //     searchHint: section.childColumns[index]
                      //         ['question'],
                      //     selectedColor: Colors.blue,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         border: Border.all(color: Colors.black)),
                      //     onConfirm: (results) {
                      //       //_selectedAnimals = results;
                      //     },
                      //   ),
                      // ),
                    ],
                  );
                } else if (section.childColumns[index].dataType ==
                    'multi_entry') {
                  return MultipleEntryField(
                    mainContext: context,
                    section: section.key,
                    fieldData: section.childColumns[index],
                  );
                } else {
                  return Column(
                    children: [
                      FieldWidget(
                        question: section.childColumns[index].question,
                        labelText: section.childColumns[index].label,
                        hintText: 'Enter Text Here',
                        dataType: section.childColumns[index].dataType,
                        options: section.childColumns[index].options,
                        onChange: (val) {
                          context.read<Household>().onFieldChange(section.key,
                              null, section.childColumns[index].key, val, null);
                        },
                        defaultValue: null,
                        placeHolder: '',
                        conditional_fields: {},
                      ),
                      context.watch<Household>().getFieldValue(section.key,
                                      null, section.childColumns[index].key) !=
                                  null &&
                              section.childColumns[index].conditional_fields
                                  .containsKey(context
                                      .watch<Household>()
                                      .getFieldValue(section.key, null,
                                          section.childColumns[index].key))
                          ? Column(
                              children: List.generate(
                                section
                                    .childColumns[index]
                                    .conditional_fields[context
                                        .watch<Household>()
                                        .getFieldValue(section.key, null,
                                            section.childColumns[index].key)]
                                    .length,
                                (i) => Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: FieldWidget(
                                      question: section.childColumns[index]
                                              .conditional_fields[
                                          context
                                              .watch<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  null,
                                                  section.childColumns[index]
                                                      .key)][i]['question'],
                                      labelText: section.childColumns[index]
                                              .conditional_fields[
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  section
                                                      .childColumns[index].key,
                                                  section.childColumns[index]
                                                      .key)][i]['label'],
                                      hintText: 'Enter Text Here',
                                      dataType: section.childColumns[index]
                                              .conditional_fields[
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  null,
                                                  section.childColumns[index]
                                                      .key)][i]['data_type'],
                                      options: section.childColumns[index]
                                              .conditional_fields[
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  null,
                                                  section.childColumns[index]
                                                      .key)][i]['options'],
                                      onChange: (val) {
                                        context.read<Household>().onFieldChange(
                                            section.key,
                                            null,
                                            section.childColumns[index]
                                                    .conditional_fields[
                                                context
                                                    .read<Household>()
                                                    .getFieldValue(
                                                        section.key,
                                                        null,
                                                        section
                                                            .childColumns[index]
                                                            .key)][i]['key'],
                                            val,
                                            null);
                                      },
                                      defaultValue: null,
                                      placeHolder: '',
                                      conditional_fields: section
                                                  .childColumns[index]
                                                  .conditional_fields[
                                              context
                                                  .read<Household>()
                                                  .getFieldValue(
                                                      section.key,
                                                      null,
                                                      section
                                                          .childColumns[index]
                                                          .key)][i]
                                          ['conditional_fields'],
                                    )),
                              ),
                            )
                          : SizedBox()
                    ],
                  );
                }
              }))),
        ),
      ),
    );
  }
}

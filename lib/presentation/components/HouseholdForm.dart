import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/presentation/components/MultiSelectField.dart';
import 'package:bmis_final/presentation/components/MultipleEntryField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/FormSection.dart';
import '../../widgets/field_widget.dart';

class HouseholdForm extends StatelessWidget {
  const HouseholdForm(
      {super.key,
      required this.section,
      required this.action,
      required this.isCreate});

  final FormSection section;
  final Widget action;
  final bool isCreate;

  @override
  Widget build(BuildContext context) {
    var document = context.watch<Household>().getDataBySection(section);
    print('Document: $document');
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Column(children: [
                ...List.generate(section.childColumns.length, (index) {
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
                                  isCreate: isCreate,
                                  question: section.childColumns[index]
                                      .childColumns[i]['question'],
                                  labelText: section.childColumns[index]
                                      .childColumns[i]['label'],
                                  hintText: section.childColumns[index]
                                      .childColumns[i]['hint_text'],
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
                                  defaultValue: handleSubSectionDefaultValue(
                                      document,
                                      section.childColumns[index].key,
                                      section.childColumns[index]
                                          .childColumns[i]['key']),
                                  placeHolder: '',
                                  conditional_fields: {},
                                  required: section.childColumns[index]
                                          .childColumns[i]['required'] ??
                                      false,
                                  disabled: section.childColumns[index]
                                              .childColumns[i]
                                          ['disabledOnUpdate'] ??
                                      false,
                                  dataVariable: section.childColumns[index]
                                      .childColumns[i]['key'],
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
                                      isCreate: isCreate,
                                      question: '',
                                      labelText: section.childColumns[index]
                                                  .childColumns[i]
                                              ['conditional_fields'][
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  section
                                                      .childColumns[index].key,
                                                  section.childColumns[index]
                                                          .childColumns[i]
                                                      ['key'])]['label'],
                                      hintText: 'Enter Text Here',
                                      dataType: section.childColumns[index]
                                                  .childColumns[i]
                                              ['conditional_fields'][
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  section
                                                      .childColumns[index].key,
                                                  section.childColumns[index]
                                                          .childColumns[i]
                                                      ['key'])]['data_type'],
                                      options: section.childColumns[index]
                                                  .childColumns[i]
                                              ['conditional_fields'][
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  section
                                                      .childColumns[index].key,
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
                                              .childColumns[i]
                                          ['conditional_fields'],
                                      required: section.childColumns[index]
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
                                                              .childColumns[i][
                                                          'key'])]['required'] ??
                                          false,
                                      disabled: section.childColumns[index]
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
                                                              ['key'])]
                                              ['disabledOnUpdate'] ??
                                          false,
                                      dataVariable: section.childColumns[index]
                                                  .childColumns[i]
                                              ['conditional_fields'][
                                          context
                                              .read<Household>()
                                              .getFieldValue(
                                                  section.key,
                                                  section
                                                      .childColumns[index].key,
                                                  section.childColumns[index]
                                                          .childColumns[i]
                                                      ['key'])]['key'],
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
                      isCreate: isCreate,
                      mainContext: context,
                      section: section.key,
                      fieldData: section.childColumns[index],
                    );
                  } else {
                    return Column(
                      children: [
                        FieldWidget(
                          isCreate: isCreate,
                          question: section.childColumns[index].question,
                          labelText: section.childColumns[index].label,
                          hintText: 'Enter Text Here',
                          dataType: section.childColumns[index].dataType,
                          options: section.childColumns[index].options,
                          onChange: (val) {
                            context.read<Household>().onFieldChange(
                                section.key,
                                null,
                                section.childColumns[index].key,
                                val,
                                null);
                          },
                          defaultValue:
                              document[section.childColumns[index].key],
                          placeHolder: '',
                          conditional_fields: {},
                          required: section.childColumns[index].required,
                          disabled:
                              section.childColumns[index].disabledOnUpdate,
                          dataVariable: section.childColumns[index].key,
                        ),
                        context.watch<Household>().getFieldValue(
                                        section.key,
                                        null,
                                        section.childColumns[index].key) !=
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
                                            .getFieldValue(
                                                section.key,
                                                null,
                                                section
                                                    .childColumns[index].key)]
                                        .length, (i) {
                                  var dataType = section.childColumns[index]
                                          .conditional_fields[
                                      context.read<Household>().getFieldValue(
                                          section.key,
                                          null,
                                          section.childColumns[index]
                                              .key)][i]['data_type'];
                                  if (dataType == 'multiple_select') {
                                    return Column(
                                      children: [
                                        Container(
                                          // margin: const EdgeInsets.only(top: 16.0),
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Text(
                                              section.childColumns[index]
                                                          .conditional_fields[
                                                      context
                                                          .read<Household>()
                                                          .getFieldValue(
                                                              section.key,
                                                              null,
                                                              section
                                                                  .childColumns[
                                                                      index]
                                                                  .key)][i]
                                                  ['question'],
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        MultiSelectField(
                                          field: BMISFormField.fromObject(
                                              section.childColumns[index]
                                                      .conditional_fields[
                                                  context
                                                      .read<Household>()
                                                      .getFieldValue(
                                                          section.key,
                                                          null,
                                                          section
                                                              .childColumns[
                                                                  index]
                                                              .key)][i]),
                                        ),
                                      ],
                                    );
                                  }

                                  return Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: FieldWidget(
                                        isCreate: isCreate,
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
                                                    section.childColumns[index]
                                                        .key,
                                                    section.childColumns[index]
                                                        .key)][i]['label'],
                                        hintText: 'Enter Text Here',
                                        dataType: dataType,
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
                                                              .childColumns[
                                                                  index]
                                                              .key)][i]['key'],
                                              val,
                                              null);
                                        },
                                        defaultValue: document[section
                                                .childColumns[index]
                                                .conditional_fields[
                                            context
                                                .watch<Household>()
                                                .getFieldValue(
                                                    section.key,
                                                    null,
                                                    section.childColumns[index]
                                                        .key)][i]['key']],
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
                                        required: section.childColumns[index]
                                                    .conditional_fields[
                                                context
                                                    .read<Household>()
                                                    .getFieldValue(
                                                        section.key,
                                                        section
                                                            .childColumns[index]
                                                            .key,
                                                        section
                                                            .childColumns[index]
                                                            .key)][i]['required'] ??
                                            false,
                                        disabled:
                                            section.childColumns[index]
                                                            .conditional_fields[
                                                        context
                                                            .read<Household>()
                                                            .getFieldValue(
                                                                section.key,
                                                                section
                                                                    .childColumns[
                                                                        index]
                                                                    .key,
                                                                section
                                                                    .childColumns[
                                                                        index]
                                                                    .key)][i]
                                                    ['disabledOnUpdate'] ??
                                                false,
                                        dataVariable: section
                                                .childColumns[index]
                                                .conditional_fields[
                                            context
                                                .read<Household>()
                                                .getFieldValue(
                                                    section.key,
                                                    section.childColumns[index]
                                                        .key,
                                                    section.childColumns[index]
                                                        .key)][i]['key'],
                                      ));
                                }),
                              )
                            : SizedBox()
                      ],
                    );
                  }
                }),
                action
              ])),
        ),
      ),
    );
  }

  dynamic handleSubSectionDefaultValue(Map document, subSectionKey, key) {
    if (document.containsKey(subSectionKey) &&
        document[subSectionKey].containsKey(key)) {
      return document[subSectionKey][key];
    }
    return null;
  }
}

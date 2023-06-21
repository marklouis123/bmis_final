// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmis_final/models/contact.dart';
import 'package:bmis_final/widgets/contact_list.dart';
import 'package:bmis_final/widgets/field_widget.dart';

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map newServiceProvider = {
      "key": "fishing_vessel",
      "label": "Fishing vessel",
      "data_type": "multi_entry",
      "child_columns": [
        {
          "key": "vessel_type",
          "label": "Vessel type",
          "data_type": "text",
          "can_specify_value": true,
          "options": ["non- motorized", "motorized", "Others"],
          "conditional_question": {
            "Others": [
              {
                "key": "vessel_type",
                "label": "Others, specify",
                "data_type": "text"
              }
            ]
          }
        },
        {"key": "vessel_count", "label": "Bilang", "data_type": "integer"},
        {
          "key": "material_used",
          "label": "Material Used",
          "data_type": "text",
          "options": ["Wood", "Fiber Glass", "Composite"]
        },
        {"key": "material_count", "label": "Bilang", "data_type": "integer"},
        {
          "key": "count_three_tonnage_below",
          "label": "Bilang ng 3 gross tonnage and below",
          "sublabel": "(Municipal)",
          "data_type": "integer"
        },
        {
          "key": "count_three_tonnage_above",
          "label": "Bilang ng 3 gross tonnage and above",
          "sublabel": "(Commercial)",
          "data_type": "integer"
        }
      ]
    };

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
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Text(
                    newServiceProvider['label'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...List.generate(newServiceProvider['child_columns'].length,
                        (index) {
                      return FieldWidget(
                        question: newServiceProvider['child_columns'][index]
                            ['label'],
                        labelText: newServiceProvider['child_columns'][index]
                            ['label'],
                        hintText: 'Enter Text Here',
                        dataType: newServiceProvider['child_columns'][index]
                            ['data_type'],
                        options: newServiceProvider['child_columns'][index]
                            ['options'],
                      );
                    }),
                  ],
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}

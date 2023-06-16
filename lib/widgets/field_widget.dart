// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    Key? key,
    this.dataType,
    this.placeHolder,
    this.labelText,
    this.hintText,
    this.defaultValue,
    this.options,
    this.question,
    this.onChange,
  }) : super(key: key);
  final String? dataType;
  final String? placeHolder;
  final String? labelText;
  final String? hintText;
  final dynamic defaultValue;
  final List<String>? options;
  final String? question;
  final Function()? onChange;

  @override
  Widget build(BuildContext context) {
    if (question!.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            border: const OutlineInputBorder(),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(question!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
                border: const OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ],
      );
    }
  }
}

import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    Key? key,
    this.dataType,
    this.placeHolder,
    this.label,
    this.defaultValue,
    this.options,
    this.question,
    this.onChange,
  }) : super(key: key);
  final String? dataType;
  final String? placeHolder;
  final String? label;
  final dynamic defaultValue;
  final List<String>? options;
  final String? question;
  final Function()? onChange;

  @override
  Widget build(BuildContext context) {
    if (question!.isEmpty){
      return Text('way sulod');
    } else {
      return const Text('naay sulod');
    }
  }
}

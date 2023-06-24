import 'package:bmis_final/models/BMISFormField.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MultiSelectField extends StatefulWidget {
  const MultiSelectField({
    super.key,
    required this.field,
  });

  final BMISFormField field;

  @override
  State<MultiSelectField> createState() => _MultiSelectFieldState();
}

class _MultiSelectFieldState extends State<MultiSelectField> {
  List<dynamic> selected = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFMultiSelect(
          items: widget.field.options,
          onSelect: (value) {
            selected = value;
          },
          dropdownTitleTileText: widget.field.hintText,
          dropdownTitleTileColor: Colors.white,
          dropdownTitleTileMargin: EdgeInsets.symmetric(vertical: 10),
          dropdownTitleTilePadding: EdgeInsets.all(10),
          dropdownUnderlineBorder:
              const BorderSide(color: Colors.transparent, width: 2),
          dropdownTitleTileBorder: Border.all(color: Colors.grey, width: 1),
          dropdownTitleTileBorderRadius: BorderRadius.circular(5),
          submitButton: Text('OK'),
          dropdownTitleTileTextStyle:
              const TextStyle(fontSize: 14, color: Colors.black54),
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.all(6),
          type: GFCheckboxType.basic,
          activeBgColor: Colors.green.withOpacity(0.5),
          inactiveBorderColor: Colors.grey,
          dropdownBgColor: Colors.white,
          buttonColor: Theme.of(context).colorScheme.primary,
          customBgColor: Colors.green,
          color: Colors.white),
    );
  }
}

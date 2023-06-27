// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmis_final/config/global/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../application/Household.dart';

class FieldWidget extends StatefulWidget {
  const FieldWidget(
      {Key? key,
      required this.dataType,
      required this.placeHolder,
      required this.labelText,
      required this.hintText,
      required this.defaultValue,
      required this.options,
      required this.question,
      required this.onChange,
      required this.conditional_fields,
      required this.disabled,
      required this.required,
      required this.isCreate})
      : super(key: key);
  final String dataType;
  final String placeHolder;
  final String labelText;
  final String hintText;
  final dynamic defaultValue;
  final List<dynamic> options;
  final String question;
  final Function(dynamic val) onChange;
  final Map conditional_fields;
  final bool required;
  final bool disabled;
  final bool isCreate;

  @override
  State<FieldWidget> createState() => _FieldWidgetState();
}

class _FieldWidgetState extends State<FieldWidget> {
  String? optionValue;
  final myController = TextEditingController();

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    optionValue = null;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          !widget.question.isEmpty && widget.dataType != 'label'
              ? Container(
                  // margin: const EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(widget.question,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                )
              : const SizedBox(),
          widget.dataType == 'label'
              ? Container(
                  // margin: const EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(widget.question,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                )
              : widget.dataType == 'multiple_select'
                  ? Text("Multiple Select")
                  : widget.options.isEmpty
                      ? Container(
                          // margin: const EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            validator: (value) {
                              if (widget.required &&
                                  (value == null || value.isEmpty)) {
                                return 'This field is required';
                              }

                              return null;
                            },
                            initialValue: widget.defaultValue,
                            enabled: !widget.disabled || widget.isCreate,
                            decoration: InputDecoration(
                              hintText: widget.hintText,
                              labelText: widget.labelText,
                              border: const OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            keyboardType: widget.dataType == 'text'
                                ? TextInputType.text
                                : widget.dataType == 'number'
                                    ? TextInputType.number
                                    : widget.dataType == 'phone'
                                        ? TextInputType.phone
                                        : widget.dataType == 'date'
                                            ? TextInputType.datetime
                                            : TextInputType.text,
                            inputFormatters: widget.dataType == 'number'
                                ? [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r"^\d*\.?\d*$")),
                                  ]
                                : [],
                            onChanged: widget.onChange,
                          ),
                        )
                      : Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<dynamic>(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (widget.required &&
                                    (value == null || value.isEmpty)) {
                                  return 'This field is required';
                                }

                                return null;
                              },
                              hint: Text(
                                widget.hintText,
                              ),
                              isExpanded: true,
                              itemHeight: 60,
                              value: widget.defaultValue,
                              onChanged: !widget.disabled || widget.isCreate
                                  ? (val) {
                                      setState(() {
                                        optionValue = val;
                                      });
                                      widget.onChange(val);
                                    }
                                  : null,
                              items:
                                  widget.options.map<DropdownMenuItem>((value) {
                                return DropdownMenuItem(
                                  key: Key(generateKey()),
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
        ],
      ),
    );
  }
}

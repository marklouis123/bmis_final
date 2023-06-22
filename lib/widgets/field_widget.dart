// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldWidget extends StatefulWidget {
  const FieldWidget({
    Key? key,
    required this.dataType,
    required this.placeHolder,
    required this.labelText,
    required this.hintText,
    required this.defaultValue,
    required this.options,
    required this.question,
    required this.onChange,
  }) : super(key: key);
  final String dataType;
  final String placeHolder;
  final String labelText;
  final String hintText;
  final dynamic defaultValue;
  final List<dynamic> options;
  final String question;
  final Function(dynamic val) onChange;

  @override
  State<FieldWidget> createState() => _FieldWidgetState();
}

class _FieldWidgetState extends State<FieldWidget> {
  String? optionValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.question.isEmpty
            ? Container(
                // margin: const EdgeInsets.only(bottom: 16.0),
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(widget.question,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    )),
              )
            : const SizedBox(),
        widget.options.isEmpty
            ? Container(
                // margin: const EdgeInsets.only(top: 16.0),
                child: TextField(
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<dynamic>(
                    hint: Text(
                      widget.labelText,
                    ),
                    isExpanded: true,
                    itemHeight: 60,
                    value: optionValue,
                    onChanged: (val) {
                      setState(() {
                        optionValue = val;
                      });
                      widget.onChange(val);
                    },
                    items: widget.options.map<DropdownMenuItem>((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
      ],
    );
  }
}

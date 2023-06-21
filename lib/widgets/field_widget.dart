// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldWidget extends StatefulWidget {
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
  final Function(dynamic value)? onChange;

  @override
  State<FieldWidget> createState() => _FieldWidgetState();
}

class _FieldWidgetState extends State<FieldWidget> {
  String? optionValue;

  @override
  Widget build(BuildContext context) {
    if (widget.question!.isEmpty) {
      if (widget.options!.isEmpty) {
        return Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 16.0),
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                onChanged: widget.onChange,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  labelText: widget.labelText,
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
                keyboardType: widget.dataType == 'text'
                    ? TextInputType.text
                    : widget.dataType == 'integer'
                        ? TextInputType.number
                        : widget.dataType == 'phone'
                            ? TextInputType.phone
                            : TextInputType.text,
              ),
            ),
          ],
        );
      } else {
        return Container(
          margin: const EdgeInsets.only(top: 16.0),
          // padding: const EdgeInsets.only(bottom: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              itemHeight: 60,
              value: optionValue,
              onChanged: (value) {
                setState(() {
                  optionValue = value!;
                });
              },
              items:
                  widget.options!.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      }
    } else {
      if (widget.options!.isEmpty) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                widget.question!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
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
                    : widget.dataType == 'integer'
                        ? TextInputType.number
                        : TextInputType.text,
              ),
            ),
          ],
        );
      } else {
        return Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: const EdgeInsets.only(bottom: 16.0),
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(widget.question!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    )),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    itemHeight: 60,
                    value: optionValue,
                    onChanged: (value) {
                      setState(() {
                        optionValue = value!;
                      });
                    },
                    items: widget.options!
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
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
  }
}

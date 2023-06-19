// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddContactNumberWidget extends StatefulWidget {
  const AddContactNumberWidget({
    Key? key,
    this.question,
  }) : super(key: key);
  final String? question;

  @override
  State<AddContactNumberWidget> createState() => _AddContactNumberWidgetState();
}

class _AddContactNumberWidgetState extends State<AddContactNumberWidget> {
  @override
  Widget build(BuildContext context) {
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
        ElevatedButton(
          onPressed: () {},
          style:
              ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
          child: const Text(
            'Add',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.,
        )
      ],
    );
  }
}

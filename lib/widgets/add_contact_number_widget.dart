// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:bmis_final/screens/add_contact_screen.dart';

class AddContactNumberWidget extends StatefulWidget {
  const AddContactNumberWidget({
    Key? key,
    this.question,
    this.context,
  }) : super(key: key);
  final String? question;
  final BuildContext? context;

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
          margin: const EdgeInsets.only(top: 16.0),
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
          onPressed: () {
            showModalBottomSheet(
                context: widget.context!,
                builder: (context) => const AddContactScreen());
          },
          style: ElevatedButton.styleFrom(
            // margin: const EdgeInsets.only(top: 16.0),
            minimumSize: const Size.fromHeight(50), backgroundColor: const Color(0xff2B7A78),
          ),
          child: const Text(
            'Add',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

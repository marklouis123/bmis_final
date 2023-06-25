// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmis_final/models/contact.dart';
import 'package:bmis_final/screens/add_contact_screen.dart';
import 'package:bmis_final/widgets/contact_list.dart';

class AddContactNumberWidget extends StatefulWidget {
  const AddContactNumberWidget({
    Key? key,
    this.question,
    this.context,
    this.contacts,
  }) : super(key: key);
  final String? question;
  final BuildContext? context;
  final List<Contact>? contacts;

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
                isScrollControlled: true,
                context: widget.context!,
                // builder: (context) => const AddContactScreen());
                builder: (context) {
                  return const FractionallySizedBox(
                    heightFactor: 0.75,
                    child: AddContactScreen(),
                  );
                });
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
        const Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 8,
            bottom: 16,
          ),
          child: Text(
            'Service Provider        Contact Number',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        ContactList(contacts: widget.contacts),
      ],
    );
  }
}

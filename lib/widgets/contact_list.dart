// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmis_final/models/contact.dart';
import 'package:bmis_final/widgets/contact_tile.dart';

class ContactList extends StatefulWidget {
  const ContactList({
    Key? key,
    this.contacts,
  }) : super(key: key);
  final List<Contact>? contacts;

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 150,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ContactTile(
            serviceProvider: widget.contacts?[index].serviceProvider,
            contactNumber: widget.contacts?[index].contactNumber,
          );
        },
        itemCount: widget.contacts!.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[500],
          thickness: 2.0, 
        ),
      ),
    );
  }
}

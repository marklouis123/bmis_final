import 'package:bmis_final/models/contact.dart';
import 'package:bmis_final/widgets/contact_tile.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contacts = [
    Contact(
      serviceProvider: 'Smart',
      contactNumber: '123',
    ),
    Contact(
      serviceProvider: 'Globe',
      contactNumber: '321',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContactTile(
          serviceProvider: contacts[0].serviceProvider,
          contactNumber: contacts[0].contactNumber,
        ),
        ContactTile(
          serviceProvider: contacts[1].serviceProvider,
          contactNumber: contacts[1].contactNumber,
        ),
      ],
    );
  }
}

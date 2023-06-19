// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    this.serviceProvider,
    this.contactNumber,
  }) : super(key: key);
  final String? serviceProvider;
  final String? contactNumber;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(serviceProvider!),
          Text(contactNumber!),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.close_rounded),
      ),
    );
  }
}

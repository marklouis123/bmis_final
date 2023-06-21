import 'package:bmis_final/models/circle.dart';
import 'package:bmis_final/models/contact.dart';
import 'package:bmis_final/models/square.dart';
import 'package:bmis_final/widgets/add_contact_number_widget.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  List<Contact> contacts = [
    Contact(
      serviceProvider: 'Smart',
      contactNumber: '123',
    ),
    Contact(
      serviceProvider: 'Globe',
      contactNumber: '321',
    ),
    Contact(
      serviceProvider: 'Dito',
      contactNumber: '213',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDEF2F1),
      appBar: AppBar(
        title: const Text('Testing Screen'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyCircle(),
                    MyCircle(),
                    MyCircle(),
                    MyCircle(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const FieldWidget(
                      question: '',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'integer',
                      options: [],
                    ),
                    const FieldWidget(
                      question: '32. asda',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'text',
                      options: [],
                    ),
                    const FieldWidget(
                      question: '',
                      hintText: 'bilat',
                      options: ['1', '2'],
                    ),
                    const FieldWidget(
                      question: '1. asda',
                      hintText: '',
                      options: ['1', '2'],
                    ),
                    AddContactNumberWidget(
                      context: context,
                      question: '4. Telephone/Cell-phone Service Provider.',
                      contacts: contacts,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

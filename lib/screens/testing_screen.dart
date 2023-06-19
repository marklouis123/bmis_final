import 'package:bmis_final/models/circle.dart';
import 'package:bmis_final/models/square.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
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
                  children: const <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MySquare(),
                    MySquare(),
                    MySquare(),
                    FieldWidget(
                      question: '',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'text',
                      options: [],
                    ),
                    FieldWidget(
                      question: '32. asda',
                      labelText: 'Family Head ID',
                      hintText: 'Enter Text Here',
                      dataType: 'text',
                      options: [],
                    ),
                    FieldWidget(
                      question: '',
                      options: ['1', '2'],
                    ),
                    FieldWidget(
                      question: '1. asda',
                      options: ['1', '2'],
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

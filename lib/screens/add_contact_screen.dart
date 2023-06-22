import 'package:bmis_final/widgets/contact_list.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        color: const Color(0xff747474),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FieldWidget(
                question: '',
                labelText: 'Service Provider',
                hintText: 'Enter Text Here',
                dataType: 'text',
                options: const [],
                defaultValue: null,
                onChange: (val) {},
                placeHolder: '',
              ),
              FieldWidget(
                question: '',
                labelText: 'Contact Number',
                hintText: 'Enter Text Here',
                dataType: 'phone',
                options: const [],
                defaultValue: null,
                onChange: (val) {},
                placeHolder: '',
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), backgroundColor: const Color(0xff2B7A78),
                  ),
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const Expanded(
                child: ContactList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

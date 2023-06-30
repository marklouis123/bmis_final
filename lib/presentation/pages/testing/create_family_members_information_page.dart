import 'package:flutter/material.dart';

class CreateFamilyMembersInformationPage extends StatefulWidget {
  const CreateFamilyMembersInformationPage({super.key});

  @override
  State<CreateFamilyMembersInformationPage> createState() =>
      _CreateMembersInformationPageState();
}

class _CreateMembersInformationPageState
    extends State<CreateFamilyMembersInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdef2f1),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Center(child: Text("BMIS")),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "Existing People Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

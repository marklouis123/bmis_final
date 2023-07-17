import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FamilyMembersInformationPage extends StatefulWidget {
  const FamilyMembersInformationPage({super.key});

  @override
  State<FamilyMembersInformationPage> createState() =>
      _FamilyMembersInformationPageState();
}

class _FamilyMembersInformationPageState
    extends State<FamilyMembersInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdef2f1),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(42, 122, 120, 1),
        onPressed: () {
          context.go(
              '/familyMembersInformationPage/createFamilyMemberInformation');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Center(child: Text("BMIS")),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Scrollable Menu'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor),
                ),
              )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                          "Family Members List",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Cant find? Click here to create!",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/models/BMISFormField.dart';
import 'package:bmis_final/presentation/components/MultiSelectField.dart';
import 'package:bmis_final/presentation/components/MultipleEntryField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../models/FormSection.dart';
import '../../widgets/field_widget.dart';

class FamilyMembersInformation extends StatelessWidget {
  const FamilyMembersInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10,
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.height - 196,
              width: MediaQuery.of(context).size.width - 20,
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3aafa8),
                            minimumSize: const Size(88, 36),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            alignment: Alignment.centerRight),
                        onPressed: () {
                          context.go(
                              '/householdPage/updateHousehold/addFamilyMember');
                        },
                        child: Row(
                          children: [Icon(Icons.add), Text('Add Member')],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Icon(Icons.person_2),
                      ),
                      title: Text('Bandibas, Jessa Marie Anana ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text("Female"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.cake,
                                color: Colors.red,
                              ),
                              Text("November 8, 1998"),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Relation to Head:",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Niece/Nephew"),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Icon(Icons.person_2),
                      ),
                      title: Text('Bandibas, Jessa Marie Anana ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text("Female"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.cake,
                                color: Colors.red,
                              ),
                              Text("November 8, 1998"),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Relation to Head:",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Niece/Nephew"),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Icon(Icons.person_2),
                      ),
                      title: Text('Bandibas, Jessa Marie Anana ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text("Female"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.cake,
                                color: Colors.red,
                              ),
                              Text("November 8, 1998"),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Relation to Head:",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Niece/Nephew"),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Icon(Icons.person_2),
                      ),
                      title: Text('Bandibas, Jessa Marie Anana ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text("Female"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.cake,
                                color: Colors.red,
                              ),
                              Text("November 8, 1998"),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Relation to Head:",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("Niece/Nephew"),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}

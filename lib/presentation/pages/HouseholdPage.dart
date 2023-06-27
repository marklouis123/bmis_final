import 'package:bmis_final/application/CitizenProvider.dart';
import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/presentation/pages/household/createHousehold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HouseholdPage extends StatefulWidget {
  const HouseholdPage({super.key});

  @override
  State<HouseholdPage> createState() => _HouseholdPageState();
}

class _HouseholdPageState extends State<HouseholdPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Household>().houseHoldList;
    print('Data $data');
    return Scaffold(
        backgroundColor: const Color(0xffdef2f1),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(child: Text("BMIS")),
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context.read<Household>().resetHouseholdData();
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff2a7a78),
          onPressed: () {
            context.go('/householdPage/createHousehold');
          },
          child: Icon(Icons.add),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Household List",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: ((context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Card(
                                  color: Color(0xff829b82),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(
                                          color: Color(0xff17252a), width: 2)),
                                  child: Container(
                                    height: 70,
                                    child: Center(
                                      child: ListTile(
                                          leading: Text(
                                              data[index]['family_head_id']),
                                          title: Text(
                                            householdHead(data[index][
                                                'pangalan_ng_puno_ng_pamilya']),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    ),
                                  ))))),
                    )
                  ],
                ),
              )),
        ));
  }

  String householdHead(Map citizenData) {
    print(citizenData);
    return citizenData['last_name'].toString() +
        ", " +
        citizenData['first_name'];
  }
}

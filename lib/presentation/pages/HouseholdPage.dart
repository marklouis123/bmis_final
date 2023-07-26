import 'package:badges/badges.dart';
import 'package:bmis_final/application/CitizenProvider.dart';
import 'package:bmis_final/application/Household.dart';
import 'package:bmis_final/presentation/pages/household/createHousehold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import '../components/ScrollableTab.dart';

class HouseholdPage extends StatefulWidget {
  const HouseholdPage({super.key});

  @override
  State<HouseholdPage> createState() => _HouseholdPageState();
}

class _HouseholdPageState extends State<HouseholdPage> {
  final searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Household>().houseHoldList;
    var statusTab = context.watch<Household>().statusTab;
    var statusCount = context.watch<Household>().statusCount;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffdef2f1),
          resizeToAvoidBottomInset: false,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff2a7a78),
            onPressed: () {
              context.read<Household>().resetDocumentForm();
              context.go('/householdPage/createHousehold');
            },
            child: Icon(Icons.add),
          ),
          body: Column(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Container(child: Icon(Icons.search)),
                    Expanded(
                      child: Container(
                        child: TextFormField(
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: 'Search Household',
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                context
                                    .read<Household>()
                                    .getHouseholdList(searchController.text);
                              },
                            ),
                            filled: true,
                          ),
                          onChanged: (search) {
                            context.read<Household>().getHouseholdList(search);
                          },

                          // keyboardType: widget.dataType == 'text'
                          //     ? TextInputType.text
                          //     : widget.dataType == 'number'
                          //         ? TextInputType.number
                          //         : widget.dataType == 'phone'
                          //             ? TextInputType.phone
                          //             : widget.dataType == 'date'
                          //                 ? TextInputType.datetime
                          //                 : TextInputType.text,
                          // inputFormatters: widget.dataType == 'number'
                          //     ? [
                          //         FilteringTextInputFormatter.allow(
                          //             RegExp(r"^\d*\.?\d*$")),
                          //       ]
                          //     : [],
                          // onChanged: widge
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: badges.Badge(
                        position: BadgePosition.topEnd(),
                        badgeStyle: badges.BadgeStyle(
                          shape: badges.BadgeShape.circle,
                          badgeColor: Colors.orange,
                          padding: EdgeInsets.all(10),
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white, width: 0),
                          elevation: 0,
                        ),
                        badgeContent: Text(
                            statusCount[0] > 9
                                ? '9+'
                                : statusCount[0].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        child: Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff789399),
                                    minimumSize: Size(
                                        (MediaQuery.of(context).size.width / 3),
                                        36),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    side: statusTab == 0
                                        ? BorderSide(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 4)
                                        : null),
                                onPressed: () {
                                  context.read<Household>().updateStatusTab(0);
                                },
                                child: Text(
                                  'TODO',
                                  style: const TextStyle(fontSize: 16),
                                ))),
                      ),
                    ),
                  ),
                  Container(
                    child: badges.Badge(
                      position: BadgePosition.topEnd(),
                      badgeStyle: badges.BadgeStyle(
                        shape: badges.BadgeShape.circle,
                        badgeColor: Colors.orange,
                        padding: EdgeInsets.all(10),
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white, width: 0),
                        elevation: 0,
                      ),
                      badgeContent: Text(
                          statusCount[1] > 9 ? '9+' : statusCount[1].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      child: Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDCA1E),
                                  minimumSize: Size(
                                      (MediaQuery.of(context).size.width / 3),
                                      36),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                  side: statusTab == 1
                                      ? BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 4)
                                      : null),
                              onPressed: () {
                                context.read<Household>().updateStatusTab(1);
                              },
                              child: Text(
                                'IN PROGRESS',
                                style: const TextStyle(fontSize: 16),
                              ))),
                    ),
                  ),

                  // Expanded(
                  //   child: Container(
                  //       margin: const EdgeInsets.all(8.0),
                  //       child: ElevatedButton(
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Theme.of(context).primaryColor,
                  //             minimumSize: const Size(88, 36),
                  //             padding: const EdgeInsets.symmetric(
                  //               horizontal: 16,
                  //             ),
                  //             shape: const RoundedRectangleBorder(
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(5)),
                  //             ),
                  //           ),
                  //           onPressed: () {},
                  //           child: Text(
                  //             'TODO',
                  //             style: const TextStyle(fontSize: 16),
                  //           ))),
                  // ),
                  // Container(
                  //     margin: EdgeInsets.symmetric(horizontal: 4),
                  //     child: ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //           backgroundColor: Color(0xffDDCA1E),
                  //           minimumSize: const Size(88, 36),
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 16,
                  //           ),
                  //           shape: const RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.all(Radius.circular(5)),
                  //           ),
                  //         ),
                  //         onPressed: () {},
                  //         child: Text(
                  //           'IN PROGRESS',
                  //           style: const TextStyle(fontSize: 16),
                  //         ))),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: badges.Badge(
                        position: BadgePosition.topEnd(),
                        badgeStyle: badges.BadgeStyle(
                          shape: badges.BadgeShape.circle,
                          badgeColor: Colors.orange,
                          padding: EdgeInsets.all(10),
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.white, width: 0),
                          elevation: 0,
                        ),
                        badgeContent: Text(
                            statusCount[2] > 9
                                ? '9+'
                                : statusCount[2].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        child: Container(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff5ABD99),
                                    minimumSize: Size(
                                        (MediaQuery.of(context).size.width / 3),
                                        36),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    side: statusTab == 2
                                        ? BorderSide(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 4)
                                        : null),
                                onPressed: () {
                                  context.read<Household>().updateStatusTab(2);
                                },
                                child: Text(
                                  'DONE',
                                  style: const TextStyle(fontSize: 16),
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            Expanded(
                              child: ListView.builder(
                                  itemCount: data.length,
                                  itemBuilder: ((context, index) {
                                    var household = data[index];
                                    return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Card(
                                            color: Color(0xff829b82),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                                side: BorderSide(
                                                    color: Color(0xff17252a),
                                                    width: 1)),
                                            child: Container(
                                              height: 70,
                                              child: Center(
                                                child: ListTile(
                                                    onTap: () {
                                                      context
                                                          .read<Household>()
                                                          .selectHouseholdForUpdate(
                                                              data[index]);
                                                      context.go(
                                                          '/householdPage/updateHousehold');
                                                    },
                                                    leading: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 5),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  10), // radius of 10
                                                          color: Colors.teal[
                                                              600] // green as background color
                                                          ),
                                                      child: Text(
                                                        household[
                                                                'family_head_id']
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    title: Text(
                                                      householdHead(household[
                                                          'pangalan_ng_puno_ng_pamilya']),
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                              ),
                                            )));
                                  })),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          )),
    );
  }

  String householdHead(Map? citizenData) {
    if (citizenData == null) {
      return "";
    }
    return citizenData['last_name'].toString() +
        ", " +
        citizenData['first_name'];
  }
}

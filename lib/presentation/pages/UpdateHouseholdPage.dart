import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bmis_final/presentation/components/FamilyMembersInformation.dart';
import 'package:bmis_final/presentation/components/HouseholdForm.dart';
import 'package:bmis_final/presentation/components/MultiSelectField.dart';
import 'package:bmis_final/presentation/components/MultipleEntryField.dart';
import 'package:bmis_final/presentation/components/ScrollableTab.dart';
import 'package:bmis_final/widgets/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';

import '../../application/Household.dart';

class UpdateHouseholdPage extends StatelessWidget {
  const UpdateHouseholdPage({super.key});

  @override
  Widget build(BuildContext context) {
    var document = context.watch<Household>().document;
    print('Document $document');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: const Color(0xffdef2f1),
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10), // radius of 10
                          color: Colors.orange // green as background color
                          ),
                      child: Text(
                        document['family_head_id'].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(document['pangalan_ng_puno_ng_pamilya']['middle_name'],
                        style: TextStyle(color: Colors.white, fontSize: 20))
                  ],
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.go('/householdPage');
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
              actions: <Widget>[
                Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff17252a),
                        minimumSize: const Size(88, 36),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () async {
                        bool result =
                            await context.read<Household>().updateHousehold();
                        if (result == true) {
                          AwesomeDialog(
                              context: context,
                              dialogType: DialogType.success,
                              borderSide: const BorderSide(
                                color: Color(0xff2a7a78),
                                width: 2,
                              ),
                              width: MediaQuery.of(context).size.width > 500
                                  ? 500
                                  : MediaQuery.of(context).size.width - 10,
                              buttonsBorderRadius: const BorderRadius.all(
                                Radius.circular(2),
                              ),
                              dismissOnTouchOutside: false,
                              dismissOnBackKeyPress: false,
                              headerAnimationLoop: false,
                              animType: AnimType.bottomSlide,
                              title: 'Household Update',
                              showCloseIcon: false,
                              btnCancelText: "Close",
                              btnCancelOnPress: () {
                                context.go('/householdPage');
                              },
                              btnOkOnPress: () {
                                context.go('/householdPage');
                              }).show();
                        }
                      },
                      child:
                          const Text('Update', style: TextStyle(fontSize: 16)),
                    ))
              ]),
          body: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
                child: Column(children: [
              ScrollableTab(
                tabs: context.read<Household>().tabs,
                activeTab: context.watch<Household>().currentTab,
                onTabChange: (index) {
                  context.read<Household>().selectTab(index);
                },
              ),
              context.watch<Household>().currentSection.key ==
                      'family_members_information'
                  ? FamilyMembersInformation()
                  : Expanded(
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: HouseholdForm(
                            isCreate: false,
                            section: context.watch<Household>().currentSection,
                            action: SizedBox(),
                          ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        if (context.read<Household>().currentTab > 0) {
                          context.read<Household>().selectTab(
                              context.read<Household>().currentTab - 1);
                          // _scrollToIndex(context.watch<Household>().currentTab - 1);
                        }
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                      'Page ${context.watch<Household>().currentTab + 1} of ${context.read<Household>().tabs.length}'),
                  IconButton(
                      onPressed: () {
                        if (context.read<Household>().currentTab <
                            context.read<Household>().tabs.length - 1) {
                          context.read<Household>().selectTab(
                              context.read<Household>().currentTab + 1);
                          // _scrollToIndex(context.watch<Household>().currentTab + 1);
                        }
                      },
                      icon: Icon(Icons.arrow_forward_ios))
                ],
              ),
            ])),
          )),
    );
  }

  String householdHead(Map? document) {
    Map familyIdentification = document!['family_identification'];

    return familyIdentification['family_head_id'].toString() +
        " " +
        familyIdentification['pangalan_ng_puno_ng_pamilya']['last_name']
            .toString() +
        ", " +
        familyIdentification['pangalan_ng_puno_ng_pamilya']['first_name'];
  }
}

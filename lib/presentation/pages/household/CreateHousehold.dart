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

import '../../../application/Household.dart';

class CreateHouseholdPage extends StatelessWidget {
  const CreateHouseholdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Consumer<Household>(
        builder: (context, household, child) {
          return Scaffold(
              backgroundColor: const Color(0xffdef2f1),
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  title: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('HH-23277  Garces, Mark Louis'),
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      context.go('/householdPage');
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                  actions: <Widget>[
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff17252a),
                            minimumSize: const Size(88, 36),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Update',
                              style: TextStyle(fontSize: 16)),
                        ))
                  ]),
              body: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                    child: Column(children: [
                  ScrollableTab(
                    tabs: household.tabs,
                    activeTab: household.currentTab,
                    onTabChange: (index) {
                      household.selectTab(index);
                    },
                  ),
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: HouseholdForm(
                              section: household.currentSection))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            if (household.currentTab > 0) {
                              household.selectTab(household.currentTab - 1);
                              // _scrollToIndex(household.currentTab - 1);
                            }
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      Text(
                          'Page ${household.currentTab + 1} of ${household.tabs.length}'),
                      IconButton(
                          onPressed: () {
                            if (household.currentTab <
                                household.tabs.length - 1) {
                              household.selectTab(household.currentTab + 1);
                              // _scrollToIndex(household.currentTab + 1);
                            }
                          },
                          icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ])),
              ));
        },
      ),
    );
  }
}

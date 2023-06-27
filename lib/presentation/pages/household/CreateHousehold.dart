import 'package:awesome_dialog/awesome_dialog.dart';
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
  CreateHouseholdPage({super.key});
  final _formKey = GlobalKey<FormState>();
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
                  child: Text('Create Household'),
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    context.go('/householdPage');
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                      child: Column(children: [
                    ScrollableTab(
                      tabs: household.createTabs,
                      activeTab: 0,
                      onTabChange: (index) {
                        household.selectTab(index);
                      },
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: HouseholdForm(
                                  isCreate: true,
                                  section: household.createTabs[0],
                                  action: Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff2a7a78),
                                          minimumSize:
                                              const Size.fromHeight(50),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            // If the form is valid, display a snackbar. In the real world,
                                            // you'd often call a server or save the information in a database.
                                            household.selectTab(1);
                                            household.createHousehold(
                                                household.createTabs[0].key);
                                            AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.success,
                                              borderSide: const BorderSide(
                                                color: Color(0xff2a7a78),
                                                width: 2,
                                              ),
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      500
                                                  ? 500
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      10,
                                              buttonsBorderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(2),
                                              ),
                                              dismissOnTouchOutside: false,
                                              dismissOnBackKeyPress: false,
                                              headerAnimationLoop: false,
                                              animType: AnimType.bottomSlide,
                                              title: 'Household Created',
                                              showCloseIcon: false,
                                              btnCancelText: "Close",
                                              btnCancelOnPress: () {
                                                household.selectTab(1);
                                                context.go(
                                                    '/householdPage/updateHousehold');
                                              },
                                              btnOkOnPress: () {
                                                context.go(
                                                    '/householdPage/updateHousehold');
                                              },
                                            ).show();
                                          }
                                        },
                                        child: const Text('Create Household',
                                            style: TextStyle(fontSize: 18)),
                                      )),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ])),
                ),
              ));
        },
      ),
    );
  }
}

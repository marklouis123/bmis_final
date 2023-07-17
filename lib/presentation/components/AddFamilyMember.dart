import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AddFamilyMemberPage extends StatelessWidget {
  const AddFamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Family Member"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search person last name'),
                ),
                Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Text(
                          "Can't find family member?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff17252a),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Create New Person'), // <-- Text
                        ),
                      ],
                    ))

                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   child: Card(
                //     elevation: 5,
                //     child: ListTile(
                //       leading: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: const Color(0xff3aafa8),
                //           shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(10)),
                //           ),
                //         ),
                //         onPressed: () {},
                //         child: Text('Add'), // <-- Text
                //       ),
                //       title: Text('Bandibas, Jessa Marie Anana ',
                //           style: TextStyle(
                //               fontSize: 16, fontWeight: FontWeight.bold)),
                //       subtitle: Column(
                //         children: [
                //           Row(
                //             children: [
                //               Text("Female"),
                //               SizedBox(
                //                 width: 10,
                //               ),
                //               Icon(
                //                 Icons.cake,
                //                 color: Colors.red,
                //               ),
                //               Text("Nov. 8, 1998"),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   child: Card(
                //     elevation: 5,
                //     child: ListTile(
                //       leading: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: const Color(0xff3aafa8),
                //           shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(10)),
                //           ),
                //         ),
                //         onPressed: () {},
                //         child: Text('Add'), // <-- Text
                //       ),
                //       title: Text('Bandibas, Jessa Marie Anana ',
                //           style: TextStyle(
                //               fontSize: 16, fontWeight: FontWeight.bold)),
                //       subtitle: Column(
                //         children: [
                //           Row(
                //             children: [
                //               Text("Female"),
                //               SizedBox(
                //                 width: 10,
                //               ),
                //               Icon(
                //                 Icons.cake,
                //                 color: Colors.red,
                //               ),
                //               Text("Nov. 8, 1998"),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   child: Card(
                //     elevation: 5,
                //     child: ListTile(
                //       leading: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: const Color(0xff3aafa8),
                //           shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(10)),
                //           ),
                //         ),
                //         onPressed: () {
                //           AwesomeDialog(
                //             context: context,
                //             dialogType: DialogType.info,
                //             borderSide: const BorderSide(
                //               color: Color(0xff2a7a78),
                //               width: 2,
                //             ),
                //             buttonsBorderRadius: const BorderRadius.all(
                //               Radius.circular(2),
                //             ),
                //             dismissOnTouchOutside: false,
                //             dismissOnBackKeyPress: false,
                //             headerAnimationLoop: false,
                //             animType: AnimType.bottomSlide,
                //             title: 'Confirmation',
                //             desc:
                //                 'Adding Bandibas, Jessa Marie as Family Member?',
                //             descTextStyle: TextStyle(fontSize: 16),
                //             showCloseIcon: false,
                //             btnCancelText: "Close",
                //             btnCancelOnPress: () {
                //               // context.go('/householdPage/updateHousehold');
                //             },
                //             btnOkOnPress: () {
                //               // context.go('/householdPage/updateHousehold');
                //             },
                //           ).show();
                //         },
                //         child: Text('Add'), // <-- Text
                //       ),
                //       title: Text('Bandibas, Jessa Marie Anana ',
                //           style: TextStyle(
                //               fontSize: 16, fontWeight: FontWeight.bold)),
                //       subtitle: Column(
                //         children: [
                //           Row(
                //             children: [
                //               Text("Female"),
                //               SizedBox(
                //                 width: 10,
                //               ),
                //               Icon(
                //                 Icons.cake,
                //                 color: Colors.red,
                //               ),
                //               Text("Nov. 8, 1998"),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   child: Card(
                //     elevation: 5,
                //     child: ListTile(
                //       leading: ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: const Color(0xff3aafa8),
                //           shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(10)),
                //           ),
                //         ),
                //         onPressed: () {},
                //         child: Text('Add'), // <-- Text
                //       ),
                //       title: Text('Bandibas, Jessa Marie Anana ',
                //           style: TextStyle(
                //               fontSize: 16, fontWeight: FontWeight.bold)),
                //       subtitle: Column(
                //         children: [
                //           Row(
                //             children: [
                //               Text("Female"),
                //               SizedBox(
                //                 width: 10,
                //               ),
                //               Icon(
                //                 Icons.cake,
                //                 color: Colors.red,
                //               ),
                //               Text("Nov. 8, 1998"),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

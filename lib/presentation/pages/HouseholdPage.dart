import 'package:flutter/material.dart';

class HouseholdPage extends StatelessWidget {
  const HouseholdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdef2f1),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(child: Text("BMIS")),
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
                          itemCount: 20,
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
                                          title: Text(
                                        "HH-1234 Mark Louis",
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
}

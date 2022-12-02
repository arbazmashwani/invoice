import 'package:flutter/material.dart';
import 'package:sampleweb/main.dart';
import 'package:sampleweb/widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(randomImageUrl),
            ),
          ),
          title: textwidets(
              "Ganerate Invoice", Colors.black, FontWeight.bold, null),

          //  const Text(
          //   "Ganerate Invoice",
          //   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          // ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey.withOpacity(0.10),
        //floating action bar
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          child: Container(
            width: 1000,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(randomImageUrl),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textwidets("SOFT DEV", Colors.black, FontWeight.bold, 22),
                      textwidets("Software Developers", Colors.black54,
                          FontWeight.bold, null)
                    ],
                  ),
                  Container(
                    width: 200,
                  ),
                  iconButtonWidget(Icons.add, Colors.blue, "Add", () {}),
                  iconButtonWidget(Icons.edit, Colors.green, "Edit", () {}),
                  iconButtonWidget(Icons.delete, Colors.red, "Delete", () {}),
                  iconButtonWidget(Icons.print,
                      const Color.fromARGB(255, 80, 3, 3), "Print", () {}),
                  iconButtonWidget(Icons.preview,
                      const Color.fromARGB(255, 14, 138, 10), "Preview", () {}),
                  iconButtonWidget(
                      Icons.exit_to_app, Colors.redAccent, "Exit", () {}),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
                  child: Row(
                    children: [
                      Flexible(
                        child: dropDownWidgetsfield("Company", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Perfoma Inv No", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield("Ref No", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Billing Type", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Billing Amount", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child:
                            dropDownWidgetsfield("12/01/2022", [], (value) {}),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
                  child: Row(
                    children: [
                      Flexible(
                        child: dropDownWidgetsfield("Company", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Perfoma Inv No", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield("Ref No", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Billing Type", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: dropDownWidgetsfield(
                            "Billing Amount", [], (value) {}),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                          child: Center(
                        child: Text(
                          "TAX REGIME : SRB",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "Head Office :. 48-B, Block 06 , P.E.C.H.S , Karachi East , Jamshed Town Karachi",
                        style: TextStyle(color: Colors.blue.withOpacity(0.90)),
                      ),
                    ),
                  ),
                ),
                //data table widget
                _createDataTable(),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 30,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 8,
                                child: Container(
                                  height: 30,
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Remarks",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  height: 30,
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text("F.b.costs",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 30,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Flexible(
                                child: Text(
                                  "Cost Amount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(border: Border.all()),
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 30,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Flexible(
                            child: Text(
                              "Gx Tax",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(border: Border.all()),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 30,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Flexible(
                            child: Text(
                              "Wx Tax",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(border: Border.all()),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 30,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Flexible(
                            child: Text(
                              "Net Amount",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(border: Border.all()),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  //datatable widgets

  DataTable _createDataTable() {
    return DataTable(
        columnSpacing: 170, columns: _createColumns(), rows: _createRows());
  }

  //datatable head list

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
          label: Text(
        '#',
        style: TextStyle(color: Colors.black),
      )),
      const DataColumn(
          label: Text('Vendor',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      const DataColumn(
          label: Text('Website',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      const DataColumn(
          label: Text('Period',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      const DataColumn(
          label: Text('Details',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      const DataColumn(
          label: Text('Amount',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)))
    ];
  }

  //datatable rows list , can ganerate from api future lists

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text('1')),
        DataCell(Text('Dial Zero Private Company')),
        DataCell(Text('Facebook')),
        DataCell(Text('Dec-22')),
        DataCell(Text('')),
        DataCell(Text('1500'))
      ]),
      const DataRow(cells: [
        DataCell(Text('2')),
        DataCell(Text('Dial Zero Private Company')),
        DataCell(Text('Facebook')),
        DataCell(Text('Dec-22')),
        DataCell(Text('')),
        DataCell(Text('1500'))
      ]),
      const DataRow(cells: [
        DataCell(Text('3')),
        DataCell(Text('Dial Zero Private Company')),
        DataCell(Text('Facebook')),
        DataCell(Text('Dec-22')),
        DataCell(Text('')),
        DataCell(Text('1500'))
      ]),
    ];
  }
}

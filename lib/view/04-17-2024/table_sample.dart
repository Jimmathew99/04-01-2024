import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableSample extends StatefulWidget {
  const TableSample({super.key});

  @override
  State<TableSample> createState() => _TableSampleState();
}

class _TableSampleState extends State<TableSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                TableCell(
                  child: Text("name"),
                ),
                TableCell(
                  child: Text("email"),
                ),
                TableCell(child: Text("Phone")),
              ]),
              TableRow(children: [
                Text("Jim"),
                Text("anu@gmail"),
                Text("416-706-5996"),
              ])
            ],
          ),
          DataTable(columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Email")),
            DataColumn(label: Text("Phone")),
            DataColumn(label: Text("Quantity")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Jim")),
              DataCell(Text("anu@gmail")),
              DataCell(Text("416-703-5996")),
              DataCell(Text("7")),
            ])
          ])
        ],
      ),
    );
  }
}

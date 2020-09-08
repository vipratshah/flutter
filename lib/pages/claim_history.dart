import 'package:flutter/material.dart';


class ClaimHistory extends StatelessWidget{
    @override
Widget build(BuildContext context) {
    var list = [
      {
        'id': "123123",
        "date": "20/08/2016",
        "description": "Claim Description"
      },
      {
        'id': "123124",
        "date": "26/08/2016",
        "description": "Claim Description"
      },
      {
        'id': "123125",
        "date": "26/08/2016",
        "description": "Claim Description"
      },
      {'id': "123126", "date": "26/08/2016", "description": "Claim Description"}
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('history'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Recent Claims'),
              Table(
                border: TableBorder.all(color: Colors.black),
                columnWidths: {
                  0: FixedColumnWidth(100.0),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(100.0)
                },
                children: [
                  TableRow(children: [
                    Text('Claim ID',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Date', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('View', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
                ],
              ),
              Table(
                  border: TableBorder.all(color: Colors.black),
                  columnWidths: {
                    0: FixedColumnWidth(100.0),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(100.0)
                  },
                  children: [
                    for (var item in list)
                      TableRow(children: [
                        Text(item['id']),
                        Text(item['date'] + ":" + item['description']),
                        RaisedButton(
                          child: Text("View"),
                          onPressed: () =>
                              _dsiplayDialogue(context, item['id']),
                          color: Colors.red,
                          textColor: Colors.white,
                          splashColor: Colors.grey,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        )
                      ])
                  ]),
            ],
          ),
        ));
  }

_dsiplayDialogue(BuildContext context, claimId) async {
 
    return showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height - 100,
              padding: EdgeInsets.all(80),
              color: Colors.white,
              child: Column(
                children: [
                  Table(
                    columnWidths: {
                      0: FixedColumnWidth(200.0),
                      1: FlexColumnWidth(),
                      2: FixedColumnWidth(200.0),
                    },
                    children: [
                      TableRow(children: [
                        Text('Claim ID:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(claimId,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Status:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('In Progress',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ]),
                      TableRow(children: [
                        Text('Reference ID:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('123456',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Payment Status:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Paid',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ]),
                      TableRow(children: [
                        Text('Created By:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Same Name',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Created date:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('12/09/2018 12:30 PM',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ]),
                      TableRow(children: [
                        Text('Modified By:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Same Name',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Created date:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('12/09/2018 11:30 AM',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ]),
                      TableRow(children: [
                        Text('Primary Insured:',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Dr.Same Name',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Claim Details',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.proident',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Close",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,
                  )
                ],
              ),
            ),
          );
        });
  }
}
import 'package:cyberspacemobile/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class SendMoneyPage extends StatefulWidget {
  @override
  _SendMoneyPageState createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  List<String> _tabs = ['Card', 'Bank'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Send money',
              style: TextStyle(color: Colors.black, fontSize: 32.0),
            ),
          ),
          toolbarHeight: 125.0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0, top: 20.0),
              child: CustomAvatar(),
            )
          ],
          bottom: TabBar(
            tabs: _tabs
                .map((String name) => Tab(
                      text: name,
                    ))
                .toList(),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            indicatorColor: Colors.orange,
            unselectedLabelColor: Colors.black26,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24.0,
                        bottom: 16.0,
                        left: 16.0,
                      ),
                      child: Text('Select credit card'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            color: Colors.grey[200],
                          ),
                          height: 150.0,
                          width: 40,
                          child: Center(
                            child: Text(
                              '14',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            color: Colors.indigo,
                          ),
                          height: 150.0,
                          width: 160.0,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'VISA ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '****',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24.0),
                                  ),
                                  Text(
                                    '3849',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                ],
                              ),
                              Text(
                                '\$ 1345.65',
                                style: TextStyle(
                                    color: Colors.grey[300], fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          height: 150.0,
                          width: 160.0,
                          // padding: EdgeInsets.all(16.0),
                          child: DottedBorder(
                            color: Colors.black38,
                            borderType: BorderType.RRect,
                            radius: Radius.circular(12),
                            padding: EdgeInsets.all(6),
                            dashPattern: [6, 6, 6, 6],
                            strokeWidth: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CircleAvatar(
                                  radius: 32.0,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'New credit card',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Beneficiaries'),
                          Text(
                            'Show all',
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            color: Colors.grey[200],
                          ),
                          height: 150.0,
                          width: 40,
                          child: Center(
                            child: Text(
                              '',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            color: Colors.indigo,
                          ),
                          height: 150.0,
                          width: 160.0,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 28.0,
                                  backgroundImage:
                                      AssetImage('images/avatar2.jpg'),
                                ),
                              ),
                              Text(
                                'Franz Ferdinand',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            color: Colors.black12,
                          ),
                          height: 150.0,
                          width: 160.0,
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    AssetImage('images/avatar1.jpeg'),
                              ),
                              Center(
                                child: Text(
                                  'Jon Doe',
                                  // softWrap: true,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text('Transaction Details'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.money,
                            color: Colors.grey,
                          ),
                          suffixText: 'Change currency',
                          suffixStyle: TextStyle(color: Colors.indigo),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelText: 'Amount',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: Colors.indigo),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          labelText: 'Description (optional)',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide(color: Colors.indigo),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RaisedButton(
                        elevation: 4.0,
                        padding: EdgeInsets.all(16.0),
                        onPressed: () {},
                        color: Colors.indigo,
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Scaffold(
            body: Center(child: Text('Blank Page')),
          ),
        ]),
      ),
    );
  }
}

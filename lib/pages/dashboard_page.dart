import 'package:cyberspacemobile/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> _tabs = ['Sent', 'Recieved'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Balance',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
                Text(
                  '\$ 926.21',
                  style: TextStyle(color: Colors.black, fontSize: 32.0),
                ),
              ],
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
        body: TabBarView(
          children: [
            Center(
              child: Text('Sent View'),
            ),
            Center(
              child: Text('Recieved View'),
            ),
          ],
        ),
      ),
    );
  }
}

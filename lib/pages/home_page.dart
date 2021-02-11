import 'package:cyberspacemobile/pages/dashboard_page.dart';
import 'package:cyberspacemobile/pages/other_page.dart';
import 'package:cyberspacemobile/pages/sendmoney_page.dart';
import 'package:cyberspacemobile/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;
  PageController _myPage = PageController(initialPage: 0);

  // PageController pageController = PageController(
  //   initialPage: 0,
  //   keepPage: true,
  // );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  // void bottomTapped(int index) {
  //   setState(() {
  //     bottomSelectedIndex = index;
  //     pageController.animateToPage(
  //       index,
  //       duration: Duration(milliseconds: 500),
  //       curve: Curves.ease,
  //     );
  //   });
  // }

  Widget buildPageView() {
    return PageView(
      controller: _myPage,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        DashboardPage(),
        SendMoneyPage(),
        OtherPage(),
        SettingsPage(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 4.0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  size: 32.0,
                  color: Colors.indigo,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 32.0,
                  color: Colors.black38,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.pie_chart_outline_outlined,
                  size: 32.0,
                  color: Colors.black38,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
                  size: 32.0,
                  color: Colors.black38,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                  });
                },
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 8.0,
        elevation: 40.0,
      ),
    );
  }
}

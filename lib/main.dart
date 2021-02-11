import 'package:cyberspacemobile/pages/home_page.dart';
import 'package:cyberspacemobile/pages/sendmoney_page.dart';
import 'package:cyberspacemobile/pages/settings_page.dart';
import 'package:cyberspacemobile/pages/unknown_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyberspace Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => HomePage());
        }

        if (settings.name == '/sendmoney') {
          return MaterialPageRoute(builder: (context) => SendMoneyPage());
        }

        if (settings.name == '/search') {
          return MaterialPageRoute(builder: (context) => SettingsPage());
        }

        return MaterialPageRoute(builder: (context) => UnknownPage());
      },
    );
  }
}

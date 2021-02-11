import 'package:cyberspacemobile/widgets/custom_avatar.dart';
import 'package:cyberspacemobile/widgets/settings_card_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Settings',
            style: TextStyle(color: Colors.black, fontSize: 32.0),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CustomAvatar(),
          )
        ],
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white24,
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        crossAxisCount: 2,
        mainAxisSpacing: 20.0,
        children: <Widget>[
          SettingsCard(
            iconData: Icons.info_outline,
            label: 'Profile Information',
          ),
          SettingsCard(
            iconData: Icons.lock_rounded,
            label: 'Password',
          ),
          SettingsCard(
            iconData: Icons.email,
            label: 'Email',
          ),
          SettingsCard(
            iconData: Icons.call,
            label: 'Phone Number',
          ),
          SettingsCard(
            iconData: Icons.alarm,
            label: 'Notifications',
          ),
          SettingsCard(
            iconData: Icons.money,
            label: 'Currency',
          ),
          SettingsCard(
            iconData: Icons.web_rounded,
            label: 'Language',
          ),
          SettingsCard(
            iconData: Icons.person,
            label: 'Account',
          ),
          SettingsCard(
            iconData: Icons.privacy_tip,
            label: 'Privacy Policy',
          ),
          SettingsCard(
            iconData: Icons.help,
            label: 'Terms of Use',
          ),
        ],
      ),
    );
  }
}

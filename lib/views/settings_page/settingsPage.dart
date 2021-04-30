import 'package:flutter/material.dart';
import 'package:space_app/model/settingsData.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  SettingsData data = new SettingsData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: _generateListSettings(),
    );
  }

  Widget _generateListSettings() {
    return ListView(
      children: [
        _eventNotificationItem(),
        // _onlyFavoriteItem(),
        // _updateFrequencyItem(),
      ],
    );
  }

  ListTile _eventNotificationItem() {
    return _generateSettingsItem();
  }

  ListTile _generateSettingsItem() {
    return ListTile(
    title: Text('Notificação de eventos'),
    trailing: Switch(
      value: data.eventNotificationsState,
      onChanged: (bool value) {setState(() {
        data.eventNotificationsState = value;
      });},
    ),
  );
  }

  ListTile _onlyFavoriteItem() {}

  ListTile _updateFrequencyItem() {}
}

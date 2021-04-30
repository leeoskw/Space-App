import 'package:flutter/material.dart';

class SettingsData {
  static const avaliableUpdatesFrequency = [
    '30 min',
    '1h',
    '2h',
    '6h',
    '12h',
    '1d'
  ];
  bool _eventNotificationsState = false;
  bool onlyFavoriteState = false;
  String updateFrequencyValue = SettingsData.avaliableUpdatesFrequency[0];

  get eventNotificationsState => _eventNotificationsState;
  set eventNotificationsState(value) {
    _eventNotificationsState = value;
    // Permite desligar o switch de favoritos junto ao de notificação
    if (!value) {
      onlyFavoriteState = value;
    }
  }
}

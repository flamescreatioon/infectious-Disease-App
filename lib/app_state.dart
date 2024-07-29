import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _currentPage = 0;
  int get currentPage => _currentPage;
  set currentPage(int value) {
    _currentPage = value;
  }

  String _reportType = '';
  String get reportType => _reportType;
  set reportType(String value) {
    _reportType = value;
  }

  String _diseaseType = '';
  String get diseaseType => _diseaseType;
  set diseaseType(String value) {
    _diseaseType = value;
  }

  String _symptoms = '';
  String get symptoms => _symptoms;
  set symptoms(String value) {
    _symptoms = value;
  }

  String _location = '';
  String get location => _location;
  set location(String value) {
    _location = value;
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
  }

  String _profilePic = '';
  String get profilePic => _profilePic;
  set profilePic(String value) {
    _profilePic = value;
  }

  String _DisplayName = '';
  String get DisplayName => _DisplayName;
  set DisplayName(String value) {
    _DisplayName = value;
  }
}

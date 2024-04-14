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

  int _completedQuestion = 0;
  int get completedQuestion => _completedQuestion;
  set completedQuestion(int value) {
    _completedQuestion = value;
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
  }

  int _currentQuestion = 1;
  int get currentQuestion => _currentQuestion;
  set currentQuestion(int value) {
    _currentQuestion = value;
  }

  int _correctAnswears = 0;
  int get correctAnswears => _correctAnswears;
  set correctAnswears(int value) {
    _correctAnswears = value;
  }

  bool _selectionRezult = false;
  bool get selectionRezult => _selectionRezult;
  set selectionRezult(bool value) {
    _selectionRezult = value;
  }

  int _answearChosen = 0;
  int get answearChosen => _answearChosen;
  set answearChosen(int value) {
    _answearChosen = value;
  }

  String _name = 'user';
  String get name => _name;
  set name(String value) {
    _name = value;
  }
}

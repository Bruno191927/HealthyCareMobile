import 'package:flutter/cupertino.dart';

class AppoimentProvider with ChangeNotifier{
  DateTime _day = DateTime.now();
  String _hour = "";
  String _minute = "";
  String _doctor = "";
  String _category = "";

  DateTime get day => _day;
  String get hour => _hour;
  String get minute => _minute;
  String get doctor => _doctor;
  String get category => _category;

  void selectDay(DateTime date){
    _day = date;
    notifyListeners();
  }

  void selectDoctor(String value){
    _doctor = value;
    notifyListeners();
  }

  void selectMinute(String value){
    _minute = value;
    notifyListeners();
  }

  void selectHour(String value){
    _hour = value;
    notifyListeners();
  }

  void selectCategory(String value){
    _category = value;
    notifyListeners();
  }
}
import 'package:flutter/cupertino.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';

class AppoimentProvider with ChangeNotifier{
  DateTime _day = DateTime.now();
  String _hour = "";
  String _minute = "";
  String _doctor = "";
  String _category = "";

  DoctorModel? _doctorSelected;

  DateTime get day => _day;
  String get hour => _hour;
  String get minute => _minute;
  String get doctor => _doctor;
  String get category => _category;
  DoctorModel? get doctorSelected => _doctorSelected;

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

  void changeDoctorSelected(DoctorModel model){
    _doctorSelected = model;
    notifyListeners();
  }
}
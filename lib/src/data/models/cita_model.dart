import 'package:healthycareapp/src/data/models/usuario_model.dart';
import 'package:healthycareapp/src/domain/entity/cita.dart';

import 'doctor_model.dart';

class CitasModel{
  List<CitaModel> items = [];
  CitasModel();
  CitasModel.fromJsonList(List<dynamic> jsonList){
    if(jsonList.isEmpty) return ;
    for (var item in jsonList) {
      final citaData = CitaModel.fromJson(item);
      items.add(citaData);
    }
  }
}



class CitaModel extends Cita{
  CitaModel({
    required String id,
    required UsuarioModel paciente,
    required DoctorModel doctor,
    required String day,
    required String month,
    required String year,
    required String hour,
    required String minutes,
    required bool completada,
    required String categoria,
    required String fechaCompleta
  }) : super(
    categoria: categoria,
    completada: completada,
    day: day,
    doctor: doctor,
    fechaCompleta: fechaCompleta,
    hour: hour,
    id: id,
    minutes: minutes,
    month: month,
    paciente: paciente,
    year: year
  );


  factory CitaModel.fromJson(Map<String,dynamic> json){
    return CitaModel(
      id: json["id"], 
      paciente: UsuarioModel.fromJson(json["paciente"]), 
      doctor: DoctorModel.fromJson(json["doctor"]), 
      day: json["day"], 
      month: json["month"], 
      year: json["year"], 
      hour: json["hour"], 
      minutes: json["minutes"], 
      completada: json["completada"], 
      categoria: json["categoria"], 
      fechaCompleta: json["fechaCompleta"]
    );
  }


  Map<String, dynamic> toJson() {
    return {
      "data":"data"
    };
  }
}
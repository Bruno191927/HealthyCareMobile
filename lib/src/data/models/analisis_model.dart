import 'package:healthycareapp/src/data/models/usuario_model.dart';
import 'package:healthycareapp/src/domain/entity/analisis.dart';

import 'cita_model.dart';
import 'doctor_model.dart';


class AnalisissModel{
  List<AnalisisModel> items = [];
  AnalisissModel();
  AnalisissModel.fromJsonList(List<dynamic> jsonList){
    if(jsonList.isEmpty) return ;
    for (var item in jsonList) {
      final citaData = AnalisisModel.fromJson(item);
      items.add(citaData);
    }
  }
}

class AnalisisModel extends Analisis{
  AnalisisModel({
    required String id,
    required UsuarioModel paciente,
    required DoctorModel doctor,
    required CitaModel cita,
    required String descripcion,
  }) : super(
    cita: cita,
    descripcion: descripcion,
    doctor: doctor,
    id: id,
    paciente: paciente
  );

  factory AnalisisModel.fromJson(Map<String,dynamic> json){
    return AnalisisModel(
      id: json["id"], 
      paciente: UsuarioModel.fromJson(json["paciente"]), 
      doctor: DoctorModel.fromJson(json["dcotor"]), 
      cita: CitaModel.fromJson(json["cita"]), 
      descripcion: json["descripcion"]
    );
  }

   Map<String, dynamic> toJson() {
    return {
      "data":"data"
    };
  }
}
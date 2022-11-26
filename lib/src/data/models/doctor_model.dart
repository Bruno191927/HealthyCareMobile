import 'package:healthycareapp/src/data/models/usuario_model.dart';
import 'package:healthycareapp/src/domain/entity/doctor.dart';

class DoctorModel extends Doctor{
  DoctorModel({
    required String id,
    required UsuarioModel usuario,
    required String categoria,
    required String descripcion,
  }) 
  : super(
    id: id,
    categoria: categoria,
    descripcion: descripcion,
    usuario: usuario
  );

  factory DoctorModel.fromJson(Map<String,dynamic> json){
    return DoctorModel(
      id: json["id"], 
      usuario: UsuarioModel.fromJson(json["usuario"]), 
      categoria: json["categoria"], 
      descripcion: json["descripcion"],
    );
  }

   Map<String, dynamic> toJson() {
    return {
      "data":"data"
    };
  }
}
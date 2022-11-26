import 'package:healthycareapp/src/domain/entity/usuario.dart';

class UsuarioModel extends Usuario{
  UsuarioModel({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String cellPhone,
    required String documentNumber,
    required String rol,
  }) : super(
    id: id,
    cellPhone: cellPhone,
    documentNumber: documentNumber,
    email: email,
    firstName: firstName,
    lastName: lastName,
    rol: rol,
  );


  factory UsuarioModel.fromJson(Map<String,dynamic> json){
    return UsuarioModel(
      id: json["id"], 
      email: json["email"], 
      firstName: json["firstName"], 
      lastName: json["lastName"], 
      cellPhone: json["cellPhone"], 
      documentNumber: json["documentNumber"], 
      rol: json["documentNumber"],
    );
  }

   Map<String, dynamic> toJson() {
    return {
      "data":"data"
    };
  }
}
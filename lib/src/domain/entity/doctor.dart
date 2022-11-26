import 'package:healthycareapp/src/data/models/usuario_model.dart';

class Doctor{
  final String id;
  final UsuarioModel usuario;
  final String categoria;
  final String descripcion;

  Doctor({
    required this.id,
    required this.usuario,
    required this.categoria,
    required this.descripcion,
  });
}
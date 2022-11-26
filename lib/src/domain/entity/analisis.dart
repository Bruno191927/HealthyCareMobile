import 'package:healthycareapp/src/data/models/cita_model.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/data/models/usuario_model.dart';

class Analisis {
  final String id;
  final UsuarioModel paciente;
  final DoctorModel doctor;
  final CitaModel cita;
  final String descripcion;

  Analisis({
    required this.id,
    required this.doctor,
    required this.paciente,
    required this.cita,
    required this.descripcion
  });
}
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/data/models/usuario_model.dart';

class Cita{
  final String id;
  final UsuarioModel paciente;
  final DoctorModel doctor;
  final String day;
  final String month;
  final String year;
  final String hour;
  final String minutes;
  final bool completada;
  final String categoria;
  final String fechaCompleta;
  Cita({
    required this.id,
    required this.categoria,
    required this.completada,
    required this.day,
    required this.year,
    required this.doctor,
    required this.fechaCompleta,
    required this.hour,
    required this.minutes,
    required this.month,
    required this.paciente
  });

}
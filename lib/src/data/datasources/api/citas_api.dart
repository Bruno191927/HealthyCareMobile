import 'package:dio/dio.dart';
import 'package:healthycareapp/src/data/datasources/local/auth.dart';
import 'package:healthycareapp/src/data/models/cita_model.dart';
import 'package:healthycareapp/src/presentation/env/env_config.dart';

class CitaApi{
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: '$backendHost/citas',
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      validateStatus: (_) => true,
    )
  );

  Future<bool> createCita(CitaModel model) async{
    final token = await Auth.instance.accessToken;
    try {
      final Response response = await _dio.post('/create',data:model.toJson(),options: Options(headers: {"Auth":token}));
      if(response.statusCode == 200){
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateCita(CitaModel model) async{
    final token = await Auth.instance.accessToken;
    try {
      final Response response = await _dio.put('/update',data:model.toJson(),options: Options(headers: {"Auth":token}));
      if(response.statusCode == 200){
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<List<CitaModel>> findCitas() async{
    final token = await Auth.instance.accessToken;
    try {
      final Response response = await _dio.get('/findAll');
      if(response.statusCode == 200){
        final citas = CitasModel.fromJsonList(response.data);
        return citas.items;
      }
      return [];
    } catch (e) {
      return[];
    }
  }
}
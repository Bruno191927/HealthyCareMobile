import 'package:dio/dio.dart';
import 'package:healthycareapp/src/data/datasources/local/auth.dart';
import 'package:healthycareapp/src/data/models/analisis_model.dart';
import 'package:healthycareapp/src/presentation/env/env_config.dart';

class AnalisisApi{

  AnalisisApi._internal();
  static AnalisisApi _instance = AnalisisApi._internal();
  static AnalisisApi get instance => _instance;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: '$backendHost/analisis',
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      validateStatus: (_) => true,
    )
  );

  Future<bool> createAnalisis(AnalisisModel model) async{
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

  Future<bool> updateAnalisis(AnalisisModel model) async{
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

  Future<List<AnalisisModel>> findAnalisis() async{
    final token = await Auth.instance.accessToken;
    try {
      final Response response = await _dio.get('/findAll');
      if(response.statusCode == 200){
        final citas = AnalisissModel.fromJsonList(response.data);
        return citas.items;
      }
      return [];
    } catch (e) {
      return[];
    }
  }
}
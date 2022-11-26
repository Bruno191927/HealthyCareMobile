import 'package:dio/dio.dart';
import 'package:healthycareapp/src/data/datasources/local/auth.dart';
import 'package:healthycareapp/src/data/models/doctor_model.dart';
import 'package:healthycareapp/src/presentation/env/env_config.dart';

class DoctorsModel{
  List<DoctorModel> items = [];
  DoctorsModel();
  DoctorsModel.fromJsonList(List<dynamic> jsonList){
    if(jsonList.isEmpty) return ;
    for (var item in jsonList) {
      final citaData = DoctorModel.fromJson(item);
      items.add(citaData);
    }
  }
}

class DoctorApi{

  DoctorApi._internal();
  static DoctorApi _instance = DoctorApi._internal();
  static DoctorApi get instance => _instance;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: '$backendHost/doctor',
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      validateStatus: (_) => true,
    )
  );

  Future<bool> createCita(DoctorModel model) async{
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

  Future<bool> updateCita(DoctorModel model) async{
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

  Future<List<DoctorModel>> findCitas() async{
    final token = await Auth.instance.accessToken;
    try {
      final Response response = await _dio.get('/findAll');
      if(response.statusCode == 200){
        final doctor = DoctorsModel.fromJsonList(response.data);
        return doctor.items;
      }
      return [];
    } catch (e) {
      return[];
    }
  }
}
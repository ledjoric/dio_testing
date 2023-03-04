import 'package:dio/dio.dart';
import 'package:dio_try/details_model.dart';

class DioRequests {
  final dio = Dio();

  Future<Map<String, dynamic>> getInfo(int id) async {
    Response response;
    response = await dio.get(
        'http://192.168.100.227/api/v1/index.php/getUserInfo',
        queryParameters: {'id': id});

    print(response.data.toString());
    return response.data;
  }

  void putInfo({required Details details}) async {
    Response response;
    response = await dio.post(
      'http://192.168.100.227/api/v1/index.php/registration',
      data: FormData.fromMap(details.toJson()),
    );

    print(response.data.toString());
  }

  void updateInfo({required int id, required Details details}) async {
    Response response;
    response = await dio.put(
      'http://192.168.100.227/api/v1/index.php/getUserInfo',
      queryParameters: {'id': id},
      data: FormData.fromMap(details.toJson()),
    );
  }
}

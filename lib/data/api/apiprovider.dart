import 'package:dio/dio.dart';

class ApiProvider {
  Future<String> getUrl(String prompt) async {
    final response = await Dio().post(
        'https://asia-southeast2-io-survivalguide.cloudfunctions.net/getOpenAI',
        data: {"prompt": prompt});
    String decode = response.data;
    return decode;
  }
}

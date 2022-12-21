import 'package:berita/model/beritamodel.dart';
import 'package:dio/dio.dart';

class BeritaRequest {
  Future<BeritaModel> getBerita() async {
    Response response = await Dio().get(
        'https://newsapi.org/v2/everything?q=tesla&from=2022-11-21&sortBy=publishedAt&apiKey=e4e24bebb258436890f45e7b646bb2c5');
    return BeritaModel.fromJson(response.data);
  }
}

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:movie_database/const/api.dart';
import 'package:movie_database/models/weely_releases_model.dart';

class WeeklyReleasesServices {
  final url = Uri.parse(
      "$baseUrl/movie/now_playing?api_key=$api&language=en-US&page=1");
  Future<WeeklyReleasesModel> weeklyReleasesAPi() async {
    final response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        final data = response.body.toString();
        final decode = jsonDecode(data);
        final weeklyReleasesModel = WeeklyReleasesModel.fromJson(decode);

        return weeklyReleasesModel;
      } else {
        Get.snackbar('Error', response.statusCode.toString());
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
    return WeeklyReleasesModel();
  }
}

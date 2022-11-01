import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:reciepe_app/app/model/models.dart';

class ApiServices {
  Future<List<DishesModel>> getingRecipeData() async {
    try {
      final dio = Dio();
      const baseURL = 'https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad';
      var response = await dio.get(baseURL);
      if (response.statusCode == 200) {
        Iterable list = await response.data;
        // log(response.data.toString());
        return list.map((e) => DishesModel.fromJson(e)).toList();
      }
    } catch (e) {
      log(e.toString());
    }
    return <DishesModel>[];
  }
}

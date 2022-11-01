import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/app/common/common.dart';
import 'package:reciepe_app/app/model/models.dart';

List<ApiModel> apiList = [];

class ApiServices {
  String baseURL = 'https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad';
  Future<void> getUser(BuildContext context) async {
    try {
      Response res = await Dio().get(baseURL);
      if (res.statusCode! >= 200 || res.statusCode! <= 299) {
        log(res.data.toString());
        return apiList.addAll(res.data);
      }
    } catch (e) {
      if (e is DioError) {
        return showSnackBar(context, e.message);
      } else {
        return showSnackBar(context, e.toString());
      }
    }
  }
}

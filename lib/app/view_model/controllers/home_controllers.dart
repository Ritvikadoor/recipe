import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reciepe_app/app/model/models.dart';
import 'package:reciepe_app/app/view_model/services/api_services.dart';

class HomeController extends ChangeNotifier {
  HomeController() {
    getAllData();
  }

  List<DishesModel> getAllDatas = [];
  List<Widget> tableMenuNames = [];
  List<Widget> tableViews = [];
  Future<List<DishesModel>> getAllData() async {
    getAllDatas = await ApiServices().getingRecipeData();
    tableMenuNames.clear();
    for (TableMenuList element in getAllDatas.first.tableMenuList) {
      tableMenuNames.add(Text(element.menuCategory.toString()));
      notifyListeners();
      log(tableMenuNames.toString());
    }
    return getAllDatas;
  }
}

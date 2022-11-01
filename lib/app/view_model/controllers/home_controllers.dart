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
  List tableViews = [];
  List tableprice = [];

  Future<List<DishesModel>> getAllData() async {
    getAllDatas = await ApiServices().getingRecipeData();
    tableMenuNames.clear();
    for (TableMenuList element in getAllDatas.first.tableMenuList) {
      tableMenuNames.add(Text(element.menuCategory.toString()));
      notifyListeners();
      // log(tableMenuNames.toString());
    }
    return getAllDatas;
  }

  Future<List<DishesModel>> getDishesName() async {
    getAllDatas = await ApiServices().getingRecipeData();
    tableViews.clear();
    for (CategoryDish element
        in getAllDatas.first.tableMenuList.first.categoryDishes) {
      tableViews.add(element.dishName);
      notifyListeners();
      // log(tableViews.toString());
    }
    return getAllDatas;
  }

  Future<List<DishesModel>> getDishesPrice() async {
    getAllDatas = await ApiServices().getingRecipeData();
    tableprice.clear();
    for (CategoryDish element
        in getAllDatas.first.tableMenuList.first.categoryDishes) {
      tableprice.add(element.dishPrice.toString());
      notifyListeners();
      // log(element.dishCurrency.toString());
    }
    return getAllDatas;
  }
}

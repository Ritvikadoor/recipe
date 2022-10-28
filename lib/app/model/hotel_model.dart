// import 'dart:convert';

// import 'package:reciepe_app/app/model/models.dart';

// List<HotelModel> HotelModelFromJson(String str) =>
//     List<HotelModel>.from(json.decode(str).map((x) => HotelModel.fromJson(x)));

// String HotelModelToJson(List<HotelModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class HotelModel {
//   HotelModel({
//     required this.restaurantId,
//     required this.restaurantName,
//     required this.restaurantImage,
//     required this.tableId,
//     required this.tableName,
//     required this.branchName,
//     required this.nexturl,
//     required this.tableMenuList,
//   });

//   String restaurantId;
//   String restaurantName;
//   String restaurantImage;
//   String tableId;
//   String tableName;
//   String branchName;
//   String nexturl;
//   List<TableMenuList> tableMenuList;

//   factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
//         restaurantId: json["restaurant_id"],
//         restaurantName: json["restaurant_name"],
//         restaurantImage: json["restaurant_image"],
//         tableId: json["table_id"],
//         tableName: json["table_name"],
//         branchName: json["branch_name"],
//         nexturl: json["nexturl"],
//         tableMenuList: List<TableMenuList>.from(
//             json["table_menu_list"].map((x) => TableMenuList.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "restaurant_id": restaurantId,
//         "restaurant_name": restaurantName,
//         "restaurant_image": restaurantImage,
//         "table_id": tableId,
//         "table_name": tableName,
//         "branch_name": branchName,
//         "nexturl": nexturl,
//         "table_menu_list":
//             List<dynamic>.from(tableMenuList.map((x) => x.toJson())),
//       };
// }

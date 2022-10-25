// import 'package:reciepe_app/app/model/models.dart';

// class CategoryDish {
//   CategoryDish({
//     required this.dishId,
//     required this.dishName,
//     required this.dishPrice,
//     required this.dishImage,
//     required this.dishCurrency,
//     required this.dishCalories,
//     required this.dishDescription,
//     required this.dishAvailability,
//     required this.dishType,
//     required this.nexturl,
//     required this.addonCat,
//   });

//   String dishId;
//   String dishName;
//   double dishPrice;
//   String dishImage;
//   String dishCurrency;
//   int dishCalories;
//   String dishDescription;
//   bool dishAvailability;
//   int dishType;
//   String nexturl;
//   List<AddonCat> addonCat;

//   factory CategoryDish.fromJson(Map<String, dynamic> json) => CategoryDish(
//         dishId: json["dish_id"],
//         dishName: json["dish_name"],
//         dishPrice: json["dish_price"].toDouble(),
//         dishImage: json["dish_image"],
//         dishCurrency: dishCurrencyValues.map[json["dish_currency"]].toString(),
//         dishCalories: json["dish_calories"],
//         dishDescription: json["dish_description"],
//         dishAvailability: json["dish_Availability"],
//         dishType: json["dish_Type"],
//         nexturl: json["nexturl"] == null ? null : json["nexturl"],
//         addonCat: [],
//       );

//   Map<String, dynamic> toJson() => {
//         "dish_id": dishId,
//         "dish_name": dishName,
//         "dish_price": dishPrice,
//         "dish_image": dishImage,
//         "dish_currency": dishCurrencyValues.reverse[dishCurrency],
//         "dish_calories": dishCalories,
//         "dish_description": dishDescription,
//         "dish_Availability": dishAvailability,
//         "dish_Type": dishType,
//         "nexturl": nexturl == null ? null : nexturl,
//         "addonCat": addonCat == null
//             ? null
//             : List<dynamic>.from(addonCat.map((x) => x.toJson())),
//       };
// }

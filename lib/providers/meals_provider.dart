import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:mealsapp/models/meal.dart";

final mealsProvider = Provider((ProviderRef ref) {
  return const [
    Meal(
        id: "1",
        categoryId: "1",
        name: "Mercimek Çorbası",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "1.1",
        categoryId: "1",
        name: "Tavuk Çorbası",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "2",
        categoryId: "2",
        name: "Mantı",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "3",
        categoryId: "3",
        name: "Adana Kebap",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "4",
        categoryId: "4",
        name: "Waffle",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "5",
        categoryId: "5",
        name: "Türk Kahvesi",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "6",
        categoryId: "6",
        name: "Redbull",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "7",
        categoryId: "7",
        name: "Patates Salatası",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
    Meal(
        id: "8",
        categoryId: "8",
        name: "Simit",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  ];
});

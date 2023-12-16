import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

// Sabit kategoriler listesi
const categories = [
  Category(
      id: "1", name: "Başlangıçlar", color: Color.fromARGB(255, 39, 114, 176)),
  Category(
      id: "2", name: "Ara Sıcaklar", color: Color.fromARGB(255, 233, 223, 30)),
  Category(
      id: "3", name: "Ana Yemekler", color: Color.fromARGB(255, 59, 255, 199)),
  Category(id: "4", name: "Tatlılar", color: Color.fromARGB(255, 235, 41, 219)),
  Category(id: "5", name: "İçecekler", color: Color.fromARGB(255, 46, 155, 50)),
  Category(
      id: "6",
      name: "Salata ve Mezeler",
      color: Color.fromARGB(255, 243, 33, 82)),
];

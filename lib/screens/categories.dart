import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  // Stful widgetlarda => context globaldir
  // Stless widgetlarda => Sadece build fonksiyonunda context'e erişilebilir.
  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
            meals: meals
                .where((element) => element.categoryId == category.id)
                .toList())));
  }

  void _selectDrawerItem(BuildContext context, Category category) {
    Navigator.of(context).pop();
    _selectCategory(context, category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bir kategori seçin")),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 17, 17),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategoriler Menü',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    "assets/yemek.jpg",
                    height: 90,
                    width: 190,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Başlangıçlar'),
              onTap: () {
                _selectDrawerItem(context, categories[0]);
                // Burada drawer öğesi tıklandığında yapılacak işlemleri ekleyebilirsiniz.
              },
            ),
            ListTile(
              title: Text('Ara Sıcaklar'),
              onTap: () {
                _selectDrawerItem(context, categories[1]);
                // Burada drawe
                //r öğesi tıklandığında yapılacak işlemleri ekleyebilirsiniz.
              },
            ),
            ListTile(
              title: Text('Ana Yemekler'),
              onTap: () {
                _selectDrawerItem(context, categories[2]);
                // Burada drawer öğesi tıklandığında yapılacak işlemleri ekleyebilirsiniz.
              },
            ),
            ListTile(
              title: Text('Tatlılar'),
              onTap: () {
                _selectDrawerItem(context, categories[3]);
                // Burada drawer öğesi tıklandığında yapılacak işlemleri ekleyebilirsiniz.
              },
            ),
          ],
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final category in categories)
            CategoryCard(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}
// 10:20 
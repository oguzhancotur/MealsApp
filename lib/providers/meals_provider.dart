import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:mealsapp/models/meal.dart";

// mealsProvider, yemek listesini sağlayan bir Provider
final mealsProvider = Provider<List<Meal>>((ref) {
  // Sabit bir yemek listesi döndürülüyor
  return const [
    // Yemek öğeleri, Meal sınıfı kullanılarak tanımlanmış
    Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/mercimek-corbasi-yemekcom.jpg",
      ingredients: ["Su", "Mercimek", "Tuz", "Soğan", "Patates", "Karabiber"],
      description:
          "Türk mutfaklarının vazgeçilmez çorbası. Kim bu lezzete sessiz kalabilir ki ?",
      cookingTime: "40 dakika",
    ),
    Meal(
      id: "2",
      categoryId: "1",
      name: "Yayla Çorbası",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2014/06/yayla-corbasi-yemekcom.jpg",
      ingredients: ["Yogurt", "Un", "Yumurta", "Limon", "Tuz"],
      description: "Annelerimizin vazgeçilmez ve sağlıklı çorbası !",
      cookingTime: "20 dakika",
    ),
    Meal(
      id: "3",
      categoryId: "1",
      name: "İşkembe Çorbası",
      imageUrl:
          "https://www.mutfagimdantarifler.com/wp-content/uploads/2019/11/iskembe-corbasi.jpg",
      ingredients: [
        "İşkembe",
        "Prinç",
        "Soğan",
        "Sarımsak",
        "Un",
        "Tuz",
        "Karabiber"
      ],
      description:
          "Gece ve hastalandığımızda aklımıza gelen ilk çorba, oldukça sağlıklı ve vitamin deposu !",
      cookingTime: "3 Saat",
    ),
    Meal(
      id: "4",
      categoryId: "2",
      name: "Kısır",
      imageUrl:
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2023/05/yogurma-kisir-sunum-yemekcom.jpg",
      ingredients: [
        "Bulgur",
        "Su",
        "Yağ",
        "Tuz",
        "Salça",
        "Isot",
        "Nar Ekşisi"
      ],
      description: "Hanımların günlerinin vazgeçilmez lezzeti !",
      cookingTime: "45 dakika",
    ),
    Meal(
      id: "5",
      categoryId: "2",
      name: "Humus",
      imageUrl:
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2020/11/humus-cookbook.jpg",
      ingredients: [
        "Nohut",
        "Tahin",
        "Limon Suyu",
        "Zeytinyağı",
        "Sarımsak",
        "Kimyon",
        "Tuz",
        "Su"
      ],
      description: "Akdeniz bölgesinin vazgeçilmez mezesi",
      cookingTime: "30 dakika",
    ),
    Meal(
      id: "6",
      categoryId: "2",
      name: "Şakşuka",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2019/05/saksuka-yeni.jpg",
      ingredients: [
        "Patlıcan",
        "Kabak",
        "Yeşil Biber",
        "Domates",
        "Soğan",
        "Sarımsak",
        "Zeytinyağı"
      ],
      description: "Ara sıcakların vazgeçilmez lezzeti !",
      cookingTime: "25 dakika",
    ),
    Meal(
      id: "7",
      categoryId: "3",
      name: "Adana Kebap",
      imageUrl:
          "https://cdn.yemek.com/mncrop/940/625/uploads/2016/05/adana-kebap-one-cikan.jpg",
      ingredients: ["Kıyma", "Biber salçası", "Baharatlar", "Soğan", "Yogurt"],
      description:
          "Adananın vazgeçilmez lezzeti, yanında salatası ile mükemmel bir lezzet",
      cookingTime: "30-40 dakika",
    ),
    Meal(
      id: "8",
      categoryId: "3",
      name: "İçli Köfte",
      imageUrl:
          "https://cdn.yemek.com/mncrop/940/625/uploads/2014/06/icli-kofte-2-yemekcom.jpg",
      ingredients: [
        "Bulgur",
        "Su",
        "Tuz",
        "İrmik",
        "Kıyma",
        "Soğan",
        "Yağ",
        "Biber"
      ],
      description: "Yapımı bi o kadar zor ama yemesi enfes bir lezzet !",
      cookingTime: "2-3 saat",
    ),
    Meal(
      id: "9",
      categoryId: "3",
      name: "Taze Fasulye",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2015/07/taze-fasulye-yemekcom.jpg",
      ingredients: ["Fasulye", "Soğan", "Domates", "Salça", "Tuz", "Yağ"],
      description: "Yaz aylarının sağlıklı ve hafif lezzeti",
      cookingTime: "30-40 dakika",
    ),
    Meal(
      id: "10",
      categoryId: "4",
      name: "Waffle",
      imageUrl:
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2022/02/firinda-pratik-waffle-tarifi-mutfakyusufu.jpg",
      ingredients: [
        "Un",
        "Şeker",
        "Kabartma Tozu",
        "Tuz",
        "Süt",
        "Yumurta",
        "Yağ",
        "Meyveler",
        "Çikolata"
      ],
      description:
          "Meyvelerin, çikolatanın ve hamurun birleşimi ile ortaya çıkan mükemmel lezzet!",
      cookingTime: "15 dakika",
    ),
    Meal(
      id: "11",
      categoryId: "4",
      name: "Elmalı Turta",
      imageUrl:
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2021/08/elmali-turta-6-tahira-tarifi.jpg",
      ingredients: ["Elma", "Çikolata sosu", "Un", "Şeker", "Yağ", "Tarçın"],
      description:
          "Elmalı turta, kış aylarında özellikle yaygın olarak tercih edilen nefis bir tatlıdır.",
      cookingTime: "25 dakika",
    ),
    Meal(
      id: "12",
      categoryId: "4",
      name: "Havuçlu Kek",
      imageUrl:
          "https://i.nefisyemektarifleri.com/2023/12/09/frambuazli-tart-pasta.jpg",
      ingredients: ["Havuç", "Yağ", "Yumurta", "Şeker", "Un", "Tarçın", "Tuz"],
      description:
          "Havuçlu kek, sağlıklı ve lezzetli bir alternatif olan havuçlu tariflerden biridir ve çok lezzetlidir.",
      cookingTime: "30-40 dakika",
    ),
    Meal(
      id: "13",
      categoryId: "5",
      name: "Kola",
      imageUrl:
          "https://i.lezzet.com.tr/images-xxlarge-secondary/kolanin-kullanim-alanlari-nelerdir-36f4b230-4b4c-4765-aaf8-fb72ea196706.jpg",
      ingredients: ['Bilgi bulunmamaktadır.'],
      description: "Soğuk Tüketiniz...",
    ),
    Meal(
      id: "14",
      categoryId: "5",
      name: "Ayran",
      imageUrl:
          "https://www.elbetsteakhouse.com.tr/wp-content/uploads/2021/09/ayran-piknik-bu%CC%88fe.jpg",
      ingredients: ['Bilgi bulunmamaktadır.'],
      description: "Soğuk Tüketiniz...",
    ),

    Meal(
      id: "15",
      categoryId: "5",
      name: "Şalgam",
      imageUrl:
          "https://www.diyetkolik.com/site_media/media/customvideo_images/trn.png",
      ingredients: ['Bilgi bulunmamaktadır.'],
      description: "Soğuk Tüketiniz...",
    ),
    Meal(
      id: "16",
      categoryId: "6",
      name: "Çoban Salatası",
      imageUrl:
          "https://cdn.yemek.com/mnresize/940/940/uploads/2021/07/coban-salata-one-cikan.jpg",
      ingredients: [
        "Domates",
        "Salatalık",
        "Biber",
        "Soğan",
        "Tuz",
        "Peynir",
        "Yağ"
      ],
      description:
          "Çoban salatası, taze sebzelerin ve peynirin bir araya geldiği nefis bir salata çeşididir",
    ),
    Meal(
      id: "17",
      categoryId: "6",
      name: "Haydari",
      imageUrl:
          "https://cdn.yemek.com/mncrop/940/625/uploads/2022/09/haydari-serap.jpg",
      ingredients: [
        "Yoğurt",
        "Peynir",
        "Sarımsak",
        "Nane",
        "Maydonoz",
        "Zeytinyağı"
      ],
      description:
          "Haydari, özellikle Türk mutfağına ait bir mezze çeşididir ve yoğurt bazlı bir lezzettir.",
    ),
    Meal(
      id: "18",
      categoryId: "6",
      name: "Akdeniz Salatası",
      imageUrl:
          "https://cdn.yemek.com/uploads/2019/02/akdeniz-salata-tarifi-fb.jpg",
      ingredients: [
        "Domates",
        "Biber",
        "Salatalık",
        "Zeytin",
        "Beyaz Peynir",
        "Taze Oregano",
      ],
      description:
          "Akdeniz Salatası, nefis bir karışımı içeren sağlıklı ve lezzetli bir salata çeşididir..",
    ),
  ];
});

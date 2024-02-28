import '../../domain/entities/main_screen_entity.dart';

class MainScreenModel extends MainScreenEntity {
  MainScreenModel({
    super.currentPage,
    super.categoriesData,
  });

  factory MainScreenModel.fromJson(Map<String, dynamic> json) {
    return MainScreenModel(
      currentPage: json['current_page'],
      categoriesData: (json['data'] as List)
          .map((e) => CategoriesModel.fromJson(e))
          .toList(),
    );
  }
}

class CategoriesModel extends CategoriesEntity {
  CategoriesModel({super.id, super.name, super.image});
  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

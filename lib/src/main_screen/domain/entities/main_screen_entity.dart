class MainScreenEntity {
  final int? currentPage;
  final List<CategoriesEntity>? categoriesData;

  MainScreenEntity({
    this.currentPage,
    this.categoriesData,
  });
  MainScreenEntity copyWith({
    int? currentPage,
    List<CategoriesEntity>? categoriesData,
  }) {
    return MainScreenEntity(
      currentPage: currentPage ?? this.currentPage,
      categoriesData: categoriesData ?? this.categoriesData,
    );
  }

  @override
  String toString() =>
      'MainScreenEntity(currentPage : $currentPage , categoriesData: $categoriesData)';
}

class CategoriesEntity {
  final int? id;
  final String? name;
  final String? image;

  CategoriesEntity({
    this.id,
    this.name,
    this.image,
  });
  CategoriesEntity copyWith({
    int? id,
    String? name,
    String? image,
  }) {
    return CategoriesEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  @override
  String toString() =>
      'CategoriesEntity(id : $id , name: $name , image:$image)';
}

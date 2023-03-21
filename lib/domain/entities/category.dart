import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int categoryId;
  final String categoryName;

  const Category(this.categoryId, this.categoryName);

  @override
  List<Object?> get props => [categoryId, categoryName];

}
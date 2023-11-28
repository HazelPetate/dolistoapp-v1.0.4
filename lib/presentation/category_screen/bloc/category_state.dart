// ignore_for_file: must_be_immutable

part of 'category_bloc.dart';

/// Represents the state of Category in the application.
class CategoryState extends Equatable {
  CategoryState({this.categoryModelObj});

  CategoryModel? categoryModelObj;

  @override
  List<Object?> get props => [
        categoryModelObj,
      ];
  CategoryState copyWith({CategoryModel? categoryModelObj}) {
    return CategoryState(
      categoryModelObj: categoryModelObj ?? this.categoryModelObj,
    );
  }
}

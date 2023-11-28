import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dolistoapp/presentation/category_screen/models/category_model.dart';
part 'category_event.dart';
part 'category_state.dart';

/// A bloc that manages the state of a Category according to the event that is dispatched to it.
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(CategoryState initialState) : super(initialState) {
    on<CategoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryInitialEvent event,
    Emitter<CategoryState> emit,
  ) async {
    NavigatorService.popAndPushNamed(
      AppRoutes.homepageScreen,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'homepage_bloc.dart';

/// Represents the state of Homepage in the application.
class HomepageState extends Equatable {
  HomepageState({
    this.searchController,
    this.homepageModelObj,
  });

  TextEditingController? searchController;

  HomepageModel? homepageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageModelObj,
      ];
  HomepageState copyWith({
    TextEditingController? searchController,
    HomepageModel? homepageModelObj,
  }) {
    return HomepageState(
      searchController: searchController ?? this.searchController,
      homepageModelObj: homepageModelObj ?? this.homepageModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'list_task_bloc.dart';

/// Represents the state of ListTask in the application.
class ListTaskState extends Equatable {
  ListTaskState({this.listTaskModelObj});

  ListTaskModel? listTaskModelObj;

  @override
  List<Object?> get props => [
        listTaskModelObj,
      ];
  ListTaskState copyWith({ListTaskModel? listTaskModelObj}) {
    return ListTaskState(
      listTaskModelObj: listTaskModelObj ?? this.listTaskModelObj,
    );
  }
}

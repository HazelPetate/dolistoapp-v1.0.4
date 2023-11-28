// ignore_for_file: must_be_immutable

part of 'finished_tasks_bloc.dart';

/// Represents the state of FinishedTasks in the application.
class FinishedTasksState extends Equatable {
  FinishedTasksState({this.finishedTasksModelObj});

  FinishedTasksModel? finishedTasksModelObj;

  @override
  List<Object?> get props => [
        finishedTasksModelObj,
      ];
  FinishedTasksState copyWith({FinishedTasksModel? finishedTasksModelObj}) {
    return FinishedTasksState(
      finishedTasksModelObj:
          finishedTasksModelObj ?? this.finishedTasksModelObj,
    );
  }
}

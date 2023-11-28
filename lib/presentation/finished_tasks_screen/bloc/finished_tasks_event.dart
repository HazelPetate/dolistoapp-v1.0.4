// ignore_for_file: must_be_immutable

part of 'finished_tasks_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FinishedTasks widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FinishedTasksEvent extends Equatable {}

/// Event that is dispatched when the FinishedTasks widget is first created.
class FinishedTasksInitialEvent extends FinishedTasksEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'list_task_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListTask widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListTaskEvent extends Equatable {}

/// Event that is dispatched when the ListTask widget is first created.
class ListTaskInitialEvent extends ListTaskEvent {
  @override
  List<Object?> get props => [];
}

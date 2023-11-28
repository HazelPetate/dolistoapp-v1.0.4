// ignore_for_file: must_be_immutable

part of 'launch_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Launch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LaunchEvent extends Equatable {}

/// Event that is dispatched when the Launch widget is first created.
class LaunchInitialEvent extends LaunchEvent {
  @override
  List<Object?> get props => [];
}

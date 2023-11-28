// ignore_for_file: must_be_immutable

part of 'category_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Category widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryEvent extends Equatable {}

/// Event that is dispatched when the Category widget is first created.
class CategoryInitialEvent extends CategoryEvent {
  @override
  List<Object?> get props => [];
}

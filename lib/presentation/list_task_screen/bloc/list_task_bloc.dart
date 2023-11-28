import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dolistoapp/presentation/list_task_screen/models/list_task_model.dart';
part 'list_task_event.dart';
part 'list_task_state.dart';

/// A bloc that manages the state of a ListTask according to the event that is dispatched to it.
class ListTaskBloc extends Bloc<ListTaskEvent, ListTaskState> {
  ListTaskBloc(ListTaskState initialState) : super(initialState) {
    on<ListTaskInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListTaskInitialEvent event,
    Emitter<ListTaskState> emit,
  ) async {}
}

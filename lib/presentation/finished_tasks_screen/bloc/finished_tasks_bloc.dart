import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dolistoapp/presentation/finished_tasks_screen/models/finished_tasks_model.dart';
part 'finished_tasks_event.dart';
part 'finished_tasks_state.dart';

/// A bloc that manages the state of a FinishedTasks according to the event that is dispatched to it.
class FinishedTasksBloc extends Bloc<FinishedTasksEvent, FinishedTasksState> {
  FinishedTasksBloc(FinishedTasksState initialState) : super(initialState) {
    on<FinishedTasksInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FinishedTasksInitialEvent event,
    Emitter<FinishedTasksState> emit,
  ) async {}
}

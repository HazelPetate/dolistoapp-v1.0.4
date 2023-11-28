import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dolistoapp/presentation/launch_screen/models/launch_model.dart';
part 'launch_event.dart';
part 'launch_state.dart';

/// A bloc that manages the state of a Launch according to the event that is dispatched to it.
class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc(LaunchState initialState) : super(initialState) {
    on<LaunchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LaunchInitialEvent event,
    Emitter<LaunchState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.pushNamed(
        AppRoutes.homepageScreen,
      );
    });
  }
}

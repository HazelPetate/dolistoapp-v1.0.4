import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dolistoapp/presentation/homepage_screen/models/homepage_model.dart';
import 'package:dolistoapp/data/models/listUser/post_list_user_resp.dart';
import 'package:dolistoapp/data/models/listUser/post_list_user_req.dart';
import 'dart:async';
import 'package:dolistoapp/data/repository/repository.dart';
part 'homepage_event.dart';
part 'homepage_state.dart';

/// A bloc that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc(HomepageState initialState) : super(initialState) {
    on<HomepageInitialEvent>(_onInitialize);
    on<CreateListEvent>(_callListUser);
  }

  final _repository = Repository();

  var postListUserResp = PostListUserResp();

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/list API and triggers a [CreateListEvent] event on the [HomepageBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    HomepageInitialEvent event,
    Emitter<HomepageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    add(
      CreateListEvent(),
    );
  }

  /// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/list] with the provided event and emits the state.
  ///
  /// The [CreateListEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callListUser(
    CreateListEvent event,
    Emitter<HomepageState> emit,
  ) async {
    var postListUserReq = PostListUserReq();
    await _repository.listUser(
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM',
      },
      requestData: postListUserReq.toJson(),
    ).then((value) async {
      postListUserResp = value;
      _onListUserSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onListUserError();
    });
  }

  void _onListUserSuccess(
    PostListUserResp resp,
    Emitter<HomepageState> emit,
  ) {}
  void _onListUserError() {
    //implement error method body...
  }
}

// ignore_for_file: must_be_immutable

part of 'launch_bloc.dart';

/// Represents the state of Launch in the application.
class LaunchState extends Equatable {
  LaunchState({this.launchModelObj});

  LaunchModel? launchModelObj;

  @override
  List<Object?> get props => [
        launchModelObj,
      ];
  LaunchState copyWith({LaunchModel? launchModelObj}) {
    return LaunchState(
      launchModelObj: launchModelObj ?? this.launchModelObj,
    );
  }
}

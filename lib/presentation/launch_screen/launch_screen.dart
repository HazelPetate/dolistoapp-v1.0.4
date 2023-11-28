import 'bloc/launch_bloc.dart';
import 'models/launch_model.dart';
import 'package:dolistoapp/core/app_export.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaunchBloc>(
        create: (context) =>
            LaunchBloc(LaunchState(launchModelObj: LaunchModel()))
              ..add(LaunchInitialEvent()),
        child: LaunchScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LaunchBloc, LaunchState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIcons8todolist100,
                            height: 230.v,
                            width: 184.h),
                        SizedBox(height: 40.v),
                        Text("lbl_dolisto".tr,
                            style: theme.textTheme.headlineLarge),
                        SizedBox(height: 15.v),
                        SizedBox(
                            width: 164.h,
                            child: Text("msg_streamline_your".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeGray400_1))
                      ]))));
    });
  }
}

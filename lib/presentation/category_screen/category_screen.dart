import 'bloc/category_bloc.dart';
import 'models/category_model.dart';
import 'package:dolistoapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryBloc>(
        create: (context) =>
            CategoryBloc(CategoryState(categoryModelObj: CategoryModel()))
              ..add(CategoryInitialEvent()),
        child: CategoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 50.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 12.v,
                            width: 22.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 678.v),
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, bottom: 677.v),
                            child: Text("lbl_school".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}

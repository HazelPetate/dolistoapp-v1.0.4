import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/calendar_bloc.dart';
import 'models/calendar_model.dart';
import 'package:dolistoapp/core/app_export.dart';
import 'package:dolistoapp/widgets/app_bar/appbar_image.dart';
import 'package:dolistoapp/widgets/app_bar/appbar_image_1.dart';
import 'package:dolistoapp/widgets/app_bar/appbar_title.dart';
import 'package:dolistoapp/widgets/app_bar/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (context) => CalendarBloc(CalendarState(
        calendarModelObj: CalendarModel(),
      ))
        ..add(CalendarInitialEvent()),
      child: CalendarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarImage(
                svgPath: ImageConstant.imgIconcalendar,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 17.v,
                  bottom: 18.v,
                ),
              ),
              title: AppbarTitle(
                text: "lbl_calendar".tr,
                margin: EdgeInsets.only(left: 12.h),
              ),
              actions: [
                AppbarImage1(
                  svgPath: ImageConstant.imgClose,
                  margin: EdgeInsets.fromLTRB(28.h, 17.v, 28.h, 18.v),
                ),
              ],
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 18.h,
                      top: 35.v,
                      right: 22.h,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder25,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TableCalendar(
                          focusedDay: DateTime.now(),
                          firstDay: DateTime.utc(2022, 1, 1),
                          lastDay: DateTime.utc(2022, 12, 31),
                          calendarFormat: CalendarFormat.month,
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                          ),
                          calendarStyle: CalendarStyle(
                            weekendTextStyle: TextStyle(color: Colors.blue),
                            todayDecoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                          daysOfWeekStyle: DaysOfWeekStyle(
                            weekendStyle: TextStyle(color: Colors.blue),
                          ),
                          // Add event handlers if needed
                          onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
                            // Handle day selected
                          },
                          onPageChanged: (focusedDay) {
                            // Handle page change
                          },
                        ),
                        // Your existing code
                      ],
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 25.v,
                    ),
                    decoration: AppDecoration.fillGray800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25,
                    ),
                    child: Text(
                      "lbl_today".tr,
                      style: CustomTextStyles.titleLargeWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

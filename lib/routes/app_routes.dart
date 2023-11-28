import 'package:flutter/material.dart';
import 'package:dolistoapp/presentation/launch_screen/launch_screen.dart';
import 'package:dolistoapp/presentation/homepage_screen/homepage_screen.dart';
import 'package:dolistoapp/presentation/category_screen/category_screen.dart';
import 'package:dolistoapp/presentation/list_task_screen/list_task_screen.dart';
import 'package:dolistoapp/presentation/calendar_screen/calendar_screen.dart';
import 'package:dolistoapp/presentation/finished_tasks_screen/finished_tasks_screen.dart';
import 'package:dolistoapp/presentation/settings_screen/settings_screen.dart';
import 'package:dolistoapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String launchScreen = '/launch_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String categoryScreen = '/category_screen';

  static const String listTaskScreen = '/list_task_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String finishedTasksScreen = '/finished_tasks_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        launchScreen: LaunchScreen.builder,
        homepageScreen: HomepageScreen.builder,
        categoryScreen: CategoryScreen.builder,
        listTaskScreen: ListTaskScreen.builder,
        calendarScreen: CalendarScreen.builder,
        finishedTasksScreen: FinishedTasksScreen.builder,
        settingsScreen: SettingsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LaunchScreen.builder
      };
}

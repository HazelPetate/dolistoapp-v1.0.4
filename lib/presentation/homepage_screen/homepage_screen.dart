import 'bloc/homepage_bloc.dart';
import 'models/homepage_model.dart';
import 'package:dolistoapp/core/app_export.dart';
import 'package:dolistoapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:dolistoapp/presentation/list_task_screen/list_task_screen.dart';
import 'package:dolistoapp/presentation/calendar_screen/calendar_screen.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageBloc>(
        create: (context) =>
            HomepageBloc(HomepageState(homepageModelObj: HomepageModel()))
              ..add(HomepageInitialEvent()),
        child: HomepageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 26.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BlocSelector<HomepageBloc, HomepageState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_your_list".tr,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(14.h, 8.v, 11.h, 5.v),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgMenu)),
                      prefixConstraints: BoxConstraints(maxHeight: 37.v),
                      suffix: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 6.v),
                          child: CustomImageView(
                              svgPath: ImageConstant
                                  .imgNotificationsnoneblack24dp1)),
                      suffixConstraints: BoxConstraints(maxHeight: 37.v));
                }),
            Padding(
                padding: EdgeInsets.only(left: 14.h, top: 48.v, bottom: 5.v),
                child: Text("lbl_starred".tr,
                    style: CustomTextStyles.bodyMediumGray400))
          ])),
    ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomepageScreen(),
    CalendarScreen(),
    ListTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          ]),
    );
  }
}

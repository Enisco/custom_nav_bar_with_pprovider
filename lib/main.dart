import 'package:custom_nav_bar_with_pprovider/constants.dart';
import 'package:custom_nav_bar_with_pprovider/demo_pages/demo_pages.dart';
import 'package:custom_nav_bar_with_pprovider/models/page_index_class.dart';
import 'package:custom_nav_bar_with_pprovider/nav_bars/curved_custom_navbar.dart';
import 'package:custom_nav_bar_with_pprovider/nav_bars/normal_custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CurrentPage(),
    child: MaterialApp(
      title: 'Custom Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMainWidget(),
    ),
  ));
}

class AppMainWidget extends StatelessWidget {
  AppMainWidget({super.key});

  List appScreens = [
    const HomePage(),
    const UtilityPage(),
    const WalletPage(),
    const BudgetPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (appScreens[Provider.of<CurrentPage>(context).currentPageIndex]),
      bottomNavigationBar: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Provider.of<CurrentPage>(context).currentPageIndex == 2
            ? CurvedCustomNavBar(
                color: kPrimaryColor,
              )
            : NormalCustomNavBar(
                color: kPrimaryColor,
              ),
      ),
    );
  }
}

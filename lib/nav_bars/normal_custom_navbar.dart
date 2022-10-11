import 'package:custom_nav_bar_with_pprovider/main.dart';
import 'package:custom_nav_bar_with_pprovider/models/page_index_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppMainWidget appMainWidget = AppMainWidget();

class NormalCustomNavBar extends StatefulWidget {
  const NormalCustomNavBar({super.key, required this.color});
  final Color color;

  @override
  State<NormalCustomNavBar> createState() => _NormalCustomNavBarState();
}

class _NormalCustomNavBarState extends State<NormalCustomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 9,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                color: widget.color, borderRadius: BorderRadius.circular(20)),
            height: size.height / 12.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Home Icon
                InkWell(
                  onTap: () {
                    print('Home selected');

                    
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.home,
                        color: 
                      Provider.of<CurrentPage>(context).currentPageIndex == 0
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Provider.of<CurrentPage>(context).currentPageIndex == 0
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Utility Icon
                InkWell(
                  onTap: () {
                    print('Utility selected');
                    
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.arrow_right_arrow_left,
                        color: Provider.of<CurrentPage>(context).currentPageIndex == 1
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Utility',
                        style: TextStyle(
                          color: Provider.of<CurrentPage>(context).currentPageIndex == 1
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Wallet Icon
                InkWell(
                  onTap: () {
                    print('Wallet selected');
                    
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: Provider.of<CurrentPage>(context).currentPageIndex == 2
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: Provider.of<CurrentPage>(context).currentPageIndex == 2
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Budget Icon
                InkWell(
                  onTap: () {
                    print('Budget selected');
                    
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(3);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.chart_pie,
                        color: Provider.of<CurrentPage>(context).currentPageIndex == 3
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Budget',
                        style: TextStyle(
                          color: Provider.of<CurrentPage>(context).currentPageIndex == 3
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Settings Icon
                InkWell(
                  onTap: () {
                    print('Settings selected');
                    
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(4);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Provider.of<CurrentPage>(context).currentPageIndex == 4
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: Provider.of<CurrentPage>(context).currentPageIndex == 4
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:custom_nav_bar_with_pprovider/main.dart';
import 'package:custom_nav_bar_with_pprovider/models/page_index_class.dart';
import 'package:custom_nav_bar_with_pprovider/nav_bars/custom_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CurvedCustomNavBar extends StatefulWidget {
  const CurvedCustomNavBar({super.key, required this.color});
  final Color color;

  @override
  State<CurvedCustomNavBar> createState() => _CurvedCustomNavBarState();
}

class _CurvedCustomNavBarState extends State<CurvedCustomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 9,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipPath(
            clipper: CustomBackgroundClipper(),
            child: Container(
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
                          color: Colors.white,
                          size: size.width / 20,
                        ),
                        Text(
                          'Home',
                          style: navBarTextStyles,
                        ),
                      ],
                    ),
                  ),

                  /// Utility Icon
                  InkWell(
                    onTap: () {
                      print('Utility selected');
                      Provider.of<CurrentPage>(context, listen: false).setCurrentPageIndex(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_right_arrow_left,
                          color: Colors.white,
                          size: size.width / 20,
                        ),
                        Text(
                          'Utility',
                          style: navBarTextStyles,
                        ),
                      ],
                    ),
                  ),

                  /// Spacing the middle
                  SizedBox(width: size.width / 9),
                  //

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
                          color: Colors.white,
                          size: size.width / 20,
                        ),
                        Text(
                          'Budget',
                          style: navBarTextStyles,
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
                          color: Colors.white,
                          size: size.width / 20,
                        ),
                        Text(
                          'Settings',
                          style: navBarTextStyles,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height / 600,
            left: size.width / 2.22,
            child: Container(
              padding: EdgeInsets.all(size.width / 40),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue[900]),
              child: InkWell(
                onTap: () {
                  setState(() {
                    print('Wallet page selected');
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                  size: size.width / 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle navBarTextStyles = const TextStyle(
  color: Colors.white,
);

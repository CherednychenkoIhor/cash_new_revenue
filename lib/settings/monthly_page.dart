import 'package:cash_new_revenue/settings/page_one.dart';
import 'package:cash_new_revenue/settings/page_two.dart';
import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class MonthlyPage extends StatefulWidget {
  const MonthlyPage({Key? key}) : super(key: key);

  @override
  State<MonthlyPage> createState() => _MonthlyPageState();
}

class _MonthlyPageState extends State<MonthlyPage> {
  final List<Widget> _items = [
    const PageOne(),
    const PageTwo(),
  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _boxHeight = 166.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _buildPageView(),
              _buildCircleIndicator(),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 4, right: 4),
              decoration: const BoxDecoration(
                color: colorScheme,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconHome, height: 20),
                      ),
                      Flexible(
                          flex: 4,
                          child: Text(rental, style: sfProText16Blk)),
                      Flexible(flex: 5, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney1, style: poppins22)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconCar, height: 20),
                      ),
                      Flexible(
                          flex: 1,
                          child: Text(car, style: sfProText16Blk)),
                      Flexible(flex: 6, child: Container()),
                      Flexible(
                          flex: 4,
                          child: Text(countMoney2, style: poppins22Red)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconMoney, height: 20),
                      ),
                      Flexible(
                          flex: 2,
                          child: Text(salary, style: sfProText16Blk)),
                      Flexible(flex: 7, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney3, style: poppins22)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconRestaurant, height: 20),
                      ),
                      Flexible(
                          flex: 6,
                          child: Text(food, style: sfProText16Blk)),
                      Flexible(flex: 5, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney4, style: poppins22Red)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconCoffee, height: 20),
                      ),
                      Flexible(
                          flex: 2,
                          child: Text(coffee, style: sfProText16Blk)),
                      Flexible(flex: 10, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney5, style: poppins22Red)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconRestaurant, height: 20),
                      ),
                      Flexible(
                          flex: 6,
                          child: Text(food, style: sfProText16Blk)),
                      Flexible(flex: 6, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney6, style: poppins22Red)),
                    ],
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconPhone, height: 20),
                      ),
                      Flexible(
                          flex: 4,
                          child: Text(mobile, style: sfProText16Blk)),
                      Flexible(flex: 4, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney7, style: poppins22Red)),
                    ],
                  ),
                  dividerFull,
                  Container(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(yesterday, style: sfProText12GR,),
                  ),
                  dividerFull,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: primary10,
                        radius: 20,
                        child: SvgPicture.asset(iconEntertainment, height: 20),
                      ),
                      Flexible(
                          flex: 5,
                          child: Text(entertainment, style: sfProText16Blk)),
                      Flexible(flex: 6, child: Container()),
                      Flexible(
                          flex: 3,
                          child: Text(countMoney8, style: poppins22Red)),
                    ],
                  ),
                ]
                    .map((item) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: item,
                    ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildPageView() {
    return Container(
      color: primary,
      height: _boxHeight,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return _items[index % _items.length];
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          dotColor: point,
          selectedDotColor: colorScheme,
          dotSpacing: 7,
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }
}

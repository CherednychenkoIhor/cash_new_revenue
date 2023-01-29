import 'package:cash_new_revenue/recourses/switch.dart';
import 'package:cash_new_revenue/settings/optional.dart';
import 'package:cash_new_revenue/settings/cash.dart';
import 'package:cash_new_revenue/settings/date.dart';
import 'package:cash_new_revenue/settings/salary.dart';
import 'package:cash_new_revenue/recourses/miniAppBar.dart';
import 'package:cash_new_revenue/recourses/numbers.dart';
import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        color: colorHomePage,
        child: Column(
          children: [
            const MiniAppBar(),
            divider,
            const SwitchWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  child: const Text(
                    settings,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontFamily: 'SF_Pro_Text',
                      fontSize: 14,
                      color: optionalColor,
                    ),
                  ),
                ),
              ],
            ),
            divider,
            const Salary(),
            divider,
            const Date(),
            divider,
            const Cash(),
            divider,
            const Optional(),
            divider,
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 13,
                    bottom: 13,
                  ),
                  child: Text(
                    notes,
                    style: sfProText15,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 14,
              ),
              color: containerColor,
              child: const NumbersOfKeyboard(),
            ),
          ],
        ),
      ),
    );
  }
}

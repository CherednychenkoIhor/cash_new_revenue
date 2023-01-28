import 'package:cash_new_revenue/recourses/switch.dart';
import 'package:cash_new_revenue/settings/otional.dart';
import 'package:cash_new_revenue/settings/cash.dart';
import 'package:cash_new_revenue/settings/date.dart';
import 'package:flutter/material.dart';

import '../settings/salary.dart';
import 'mini_appBar.dart';
import 'numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        color: Colors.white,
        child: Column(
          children: [
            const MiniAppBar(),
            const Divider(
              height: 1,
              color: Color(0x2c232c2d),
            ),
            const SwitchWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                  child: const Text('Settings',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontFamily: 'SF_Pro_Text',
                          fontSize: 14,
                          color: Color(0x56232c2d))),
                ),
              ],
            ),
            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),

            const Salary(),

            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),

            const Date(),

            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),

            const Cash(),

            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),

            const Optional(),

            const Divider(
              height: 1,
              indent: 16,
              color: Color(0x59232c2d),
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 13, 0, 13),
                    child: const Text('Notes',
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Text',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xB0232C2D)))),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 14, 0, 0),
              color: const Color(0x90D2D5DB),
              child: const numbersOfKeyboard(),
            )
          ],
        ),
      ),
    );
  }
}

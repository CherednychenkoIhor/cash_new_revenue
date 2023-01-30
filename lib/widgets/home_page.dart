import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/widgets/switch.dart';
import 'package:cash_new_revenue/settings/optional.dart';
import 'package:cash_new_revenue/settings/cash.dart';
import 'package:cash_new_revenue/settings/date.dart';
import 'package:cash_new_revenue/settings/salary.dart';
import 'package:cash_new_revenue/widgets/numbers.dart';
import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme,
        leading: TextButton(
          onPressed: () {},
          child: Text(cansel, style: sfProText17),
        ),
        leadingWidth: 100,
        centerTitle: true,
        title: Text(
          income,
          style: GoogleFonts.sourceSansPro(
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(done, style: sfProText17),
          ),
        ],
      ),
      body: Container(
        // padding: const EdgeInsets.only(top: 30),
        color: colorHomePage,
        child: Column(
          children: [
            // const MiniAppBar(),
            divider,
            const SwitchWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                  child: Text(
                    settings,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.sourceSansPro(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: optionalColor,
                      ),
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
                  margin: const EdgeInsets.only(left: 16, top: 13, bottom: 13),
                  child: Text(
                    notes,
                    style: sfProText15,
                  ),
                ),
              ],
            ),
            // Container(
            //   margin: const EdgeInsets.only(top: 14),
            //   color: containerColor,
            //   child: const NumbersOfKeyboard(),
            // ),
          ],
        ),
      ),
    );
  }
}

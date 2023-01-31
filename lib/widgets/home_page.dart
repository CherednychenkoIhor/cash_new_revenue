import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/settings/optional.dart';
import 'package:cash_new_revenue/settings/cash.dart';
import 'package:cash_new_revenue/settings/date.dart';
import 'package:cash_new_revenue/widgets/numbers.dart';
import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/widgets/switch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = true;

  void updateIsOn() {
    setState(() {
      isOn = !isOn;
    });
  }

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
          isOn ? income : expense,
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
        color: colorHomePage,
        child: Column(
          children: [
            const Divider(height: 1, color: dividerColor),
            SwitchWidget(isOn: isOn, updateIsOn: updateIsOn),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(category, style: sfProText15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        isOn ? salary : food,
                        textAlign: TextAlign.end,
                        style: sfProText16,
                      ),
                    ),
                    SizedBox(
                      width: 31,
                      child: IconButton(
                        onPressed: () {},
                        icon: navigNext,
                        padding: const EdgeInsets.only(top: 4, bottom: 4),
                        tooltip: category,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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

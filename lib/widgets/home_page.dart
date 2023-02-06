import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/settings/optional.dart';
import 'package:cash_new_revenue/settings/account.dart';
import 'package:cash_new_revenue/settings/date.dart';
import 'package:cash_new_revenue/widgets/numbers.dart';
import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/widgets/switch.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

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
          style: sfProText17WC,
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
                    style: sfProText14,
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
                Flexible(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        isOn ? salary : food,
                        style: sfProText16,
                      ),
                      style: sfProText17,
                      icon: navigNext,
                      items: _addDividersAfterItems(items),
                      customItemsHeights: _getCustomItemsHeights(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      alignment: AlignmentDirectional.centerEnd,
                      buttonHeight: 40,
                    ),
                  ),
                ),
              ],
            ),
            divider,
            const Date(),
            divider,
            const Account(),
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
            // !!!TextFormField!!!
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

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Text(item, style: sfProText16),
          ),
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                height: 1,
                color: dividerColor,
              ),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomItemsHeights() {
    List<double> itemsHeights = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(30); //30
      }
      if (i.isOdd) {
        itemsHeights.add(4); //3
      }
    }
    return itemsHeights;
  }
}

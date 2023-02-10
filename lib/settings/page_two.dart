import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/widgets/radial_percent.dart';
import 'package:flutter/material.dart';


class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25),
                height: 115,
                width: 115,
                child: RadialPercentWidget(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(numberPercent, style: sfProText45),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(signPercent, style: sfProText19),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Flexible(flex: 1, child: Container()),
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(incomes, style: sfProText12),
                Text(incMoney, style: sfProText24),
                const SizedBox(height: 16),
                Text(expenses, style: sfProText12),
                Text(expMoney, style: sfProText24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

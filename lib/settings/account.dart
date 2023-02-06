import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:cash_new_revenue/widgets/cash.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(account, style: sfProText15),
        ),
        Flexible(flex: 16,child: Container()),
        Flexible(
          flex: 3,
          fit: FlexFit.loose,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Cash()));
            },
            child: Text(cash, textAlign: TextAlign.end, style: sfProText16),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Cash()));
            },
            icon: navigNext,
            padding: const EdgeInsets.only(top: 4, bottom: 4),
            tooltip: cash,
          ),
        ),
      ],
    );
  }
}

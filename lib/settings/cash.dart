import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/material.dart';

class Cash extends StatelessWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(account, style: sfProText15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 35,
              child: GestureDetector(
                onTap: () {},
                child: Text(cash, textAlign: TextAlign.end, style: sfProText16),
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
    );
  }
}

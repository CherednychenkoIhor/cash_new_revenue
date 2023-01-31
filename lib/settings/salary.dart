import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:cash_new_revenue/utils/string.dart';

class Salary extends StatelessWidget {
  const Salary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(category, style: sfProText15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 47,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  salary,
                  textAlign: TextAlign.end,
                  style: sfProText16,
                ),
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

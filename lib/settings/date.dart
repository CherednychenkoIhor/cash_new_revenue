import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 13, 275, 13),
          child: Text(
            date,
            style: sfProText15,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            today,
            textAlign: TextAlign.end,
            style: sfProText16,
          ),
        ),
      ],
    );
  }
}

import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

class Cash extends StatelessWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 13, 227, 13),
          child: Text(
            account,
            style: sfProText15,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 21,
            top: 12,
            bottom: 12,
          ),
          child: Text(
            cash,
            textAlign: TextAlign.end,
            style: sfProText16,
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: navigNext,
            padding: const EdgeInsets.only(
              top: 14.11,
              bottom: 14.11,
            ),
            alignment: Alignment.bottomLeft,
          ),
        ),
      ],
    );
  }
}

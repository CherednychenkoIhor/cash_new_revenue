import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:cash_new_revenue/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cash_new_revenue/utils/string.dart';

class Optional extends StatelessWidget {
  const Optional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Text(transfer, style: sfProText15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                optional,
                textAlign: TextAlign.end,
                style: GoogleFonts.sourceSansPro(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: optionalColor,
                  ),
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

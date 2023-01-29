import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniAppBar extends StatelessWidget {
  const MiniAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            cansel,
            style: sfProText17,
          ),
        ),
        Text(
          income,
          style: GoogleFonts.sourceSansPro(
            textStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            done,
            style: sfProText17,
          ),
        ),
      ],
    );
  }
}

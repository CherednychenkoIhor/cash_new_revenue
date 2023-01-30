import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 12),
            child: CupertinoSwitch(
              trackColor: trackColor,
              value: isOn,
              onChanged: (_isOn) {
                setState(
                  () {
                    isOn = _isOn;
                  },
                );
              },
              activeColor: primary,
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
            children: [
              getMinus,
              Text(
                zero,
                textAlign: TextAlign.end,
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: isOn ? primary : trackColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 14),
                constraints: const BoxConstraints(
                  maxWidth: 2,
                  maxHeight: 48,
                ),
                color: trackColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget get getMinus {
    return isOn
        ? Container()
        : Text(
            '-',
            textAlign: TextAlign.end,
            style: GoogleFonts.sourceSansPro(
              textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: trackColor,
              ),
            ),
          );
  }
}

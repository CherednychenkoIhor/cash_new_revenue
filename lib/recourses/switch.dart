import 'package:cash_new_revenue/utils/colors.dart';
import 'package:cash_new_revenue/utils/const.dart';
import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: 240,
            ),
            child: Switch(
              value: isOn,
              onChanged: (_isOn) {
                setState(
                  () {
                    isOn = _isOn;
                  },
                );
              },
              activeTrackColor: primary,
              activeColor: switchColor,
              inactiveTrackColor: trackColor,
              inactiveThumbColor: switchColor,
            ),
          ),
          Text(
            '-',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'SF_Pro_Text',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: isOn ? switchColor : trackColor,
            ),
          ),
          Text(
            zero,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'SF_Pro_Text',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: isOn ? primary : trackColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 14,
            ),
            constraints: const BoxConstraints(
              maxWidth: 2,
              maxHeight: 48,
            ),
            color: trackColor,
          ),
        ],
      ),
    );
  }
}

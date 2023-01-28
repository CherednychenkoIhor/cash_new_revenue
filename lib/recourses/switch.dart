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
      margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 240, 0),
            child: Switch(
              value: isOn,
              onChanged: (_isOn) {
                setState(() {
                  isOn = _isOn;
                });
              },
              activeTrackColor: const Color(0xff65bcbf),
              activeColor: Colors.white,
              inactiveTrackColor: const Color(0xfff8777d),
              inactiveThumbColor: Colors.white,
            ),
          ),
          Container(
            child: Text('-',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: isOn ? Colors.white : const Color(0xfff8777d))),
          ),
          Container(
            child: Text('\$0',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'SF_Pro_Text',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: isOn
                        ? const Color(0xff65bcbf)
                        : const Color(0xfff8777d))),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            constraints: const BoxConstraints(
              maxWidth: 2,
              maxHeight: 48,
            ),
            color: const Color(0xfff8777d),
          ),
        ],
      ),
    );
  }
}

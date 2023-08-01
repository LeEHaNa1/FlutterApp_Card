import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgColor;
  final Color textColor;

  const Button(
      {Key? key,
      required this.text,
      required this.backgColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgColor,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Text(
            text, // text(String)는 required로 되어 있는데, 이때 const Padding으로 감싸져 있으면 오류가 뜨니 const를 삭제해야 한다.
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          )),
    );
  }
}

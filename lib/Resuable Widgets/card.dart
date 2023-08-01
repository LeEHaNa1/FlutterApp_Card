import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icondata;
  final bool inverted;
  final double x, y;

  final Color isBlack = Colors.black;

  const CurrencyCard({
    Key? key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icondata,
    required this.inverted,
    required this.x,
    required this.y,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, y),
      child: Container(
        clipBehavior: Clip.hardEdge, // icon이 overflow된 곳을 잘라낸다.
        decoration: BoxDecoration(
          color:
              inverted ? Colors.white : const Color.fromARGB(255, 58, 56, 56),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  name,
                  style: TextStyle(
                      color: inverted ? isBlack : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Row(children: [
                  Text(amount,
                      style: TextStyle(
                          color: inverted ? isBlack : Colors.white,
                          fontSize: 17)),
                  const SizedBox(width: 10),
                  Text(code,
                      style: TextStyle(
                          color: inverted
                              ? isBlack
                              : Colors.white.withOpacity(0.65),
                          fontSize: 17)),
                ]),
              ]),
              Transform.scale(
                scale: 2.3, // 사이즈를 키우는 정도(몇 배)
                child: Transform.translate(
                  offset: const Offset(-10, 10), // icon의 위치를 조절한다.
                  child: Icon(icondata,
                      color: inverted ? isBlack : Colors.white, size: 80),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

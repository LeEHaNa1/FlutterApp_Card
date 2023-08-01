import 'package:flutter/material.dart';
import 'package:toonflix/Resuable%20Widgets/Button.dart';
import 'package:toonflix/Resuable Widgets/card.dart';

void main() {
  runApp(App()); // App이 root Widget이 된다.
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          // 화면을 스크롤할 수 있도록 도와주는 widget
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hello, Everyone",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "This is Visul Studio Code",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.65),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.65),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 12.5),
                const Text(
                  "\$9 286 294",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // children을 떨어트려 놓는다.
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Button(
                            text: "Transfer",
                            backgColor: Color.fromARGB(255, 61, 152, 227),
                            textColor: Colors.black)),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Button(
                            text: "Request",
                            backgColor: Color.fromARGB(255, 227, 219, 80),
                            textColor: Colors.white)),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Text 떨어트리기.
                  crossAxisAlignment:
                      CrossAxisAlignment.end, // Text 둘다 모두 바닥 중심으로 위치시키기.
                  children: [
                    const Text("Wallets",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600)),
                    Text("View All",
                        style:
                            TextStyle(color: Colors.white.withOpacity(0.65))),
                  ],
                ),
                const SizedBox(height: 25),
                const CurrencyCard(
                  name: "Euro",
                  code: "Eur",
                  amount: "14 253",
                  icondata: Icons.euro_symbol_rounded,
                  inverted: false,
                  x: 0,
                  y: 0,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "4 185",
                    icondata: Icons.attach_money_rounded,
                    inverted: true,
                    x: 0,
                    y: -20,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: "Bitcoin",
                    code: "Bcoin",
                    amount: "97 482",
                    icondata: Icons.currency_bitcoin_rounded,
                    inverted: false,
                    x: 0,
                    y: -40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } // class끝날 때 ,를 붙이면 어떤 class인지를 구분하기 쉽다.
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // Disables debug tag which are in the flutter apps //
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 51, 75),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 53, 51, 75),
        title: Text("421"),
        centerTitle: true,
      ),
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                MaterialButton(
                  child:
                      Image.asset('images/dice1.png', height: 150, width: 150),
                  onPressed: () {},
                ),
                Text(
                  "Player 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  child: Image.asset(
                    'images/dice1.png',
                    height: 150,
                    width: 150,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Player 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
        ),
        // To create space between dice and result //
        SizedBox(
          height: 20,
        ),
        Text(
          "result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

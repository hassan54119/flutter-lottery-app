import 'package:flutter/material.dart';
import 'dart:math';

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  Random random = Random();
  int x = 14;
  int y = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0CCDA3),
      appBar: AppBar(
        backgroundColor: Color(0xff0CCDA3),
        title: Center(
          child: Text(
            "Lottery App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: "Rubik Medium",
            ),
          ),
        ),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          
          Center(
            child: Column(
              children: [
                
                Text(
                  "Lottery number is $y",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,fontFamily: "Rubik Medium"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 250,
            width: 300,
            color: const Color(0xffF6EA41),
            child:
                x == y
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all, size: 35),
                        SizedBox(height: 10),
                        Text(
                          "You Won Congratulations ^_^ \nYour number is $x",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Rubik Medium"
                          ),
                        ),
                      ],
                    )
                    : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.red.withOpacity(.9),
                          size: 25,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your number is $x Better Luck\n next Time ^_^",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Rubik Medium"
                          ),
                        ),
                      ],
                    ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
        },
        child: (Icon(Icons.refresh)),
      ),
    );
  }
}

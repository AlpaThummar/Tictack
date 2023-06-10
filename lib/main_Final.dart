import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List l = ["", "", "", "", "", "", "", "", ""];
  String x = "", winp = "";
  int c1 = 0, k = 0, t = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(0);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[0]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 5),
                          bottom: BorderSide(width: 5))),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(1);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[1]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 5),
                          bottom: BorderSide(width: 5))),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(2);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[2]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 5))),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(3);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[3]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 5),
                          bottom: BorderSide(width: 5))),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(4);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[4]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 5),
                          bottom: BorderSide(width: 5))),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(5);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[5]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 5))),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(6);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[6]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(width: 5),
                  )),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(7);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[7]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 5))),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    if (c1 == 0) {
                      random(8);
                      t++;
                      win();

                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("${l[8]}", style: TextStyle(fontSize: 50)),
                  height: 60,
                  width: 60,
                )),
          ],
        ),
        Text(
          "winner=$winp",
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(
            onPressed: () {
              l = List.filled(9, "");
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return home();
                },
              ));
              setState(() {});
            },
            child: Text("Reset"))
      ]),
    );
  }

  void random(int i) {
  if(l[i]=="")
    {
      k++;
      l[i] = "x";
      if (k < 5) {
        while (true) {
          var x = Random().nextInt(9);
          if (l[x] == "") {
            l[x] = "0";
            break;
          }
        }
      }
    }
    //print("ans=$x");
  }

  void win() {
    if (l[0] == "x" && l[1] == "x" && l[2] == "x") {
      winp = 'x';
      c1++;
    } else if (l[3] == "x" && l[4] == "x" && l[5] == "x") {
      winp = 'x';
      c1++;
    } else if (l[6] == "x" && l[7] == "x" && l[8] == "x") {
      winp = 'x';
      c1++;
    } else if (l[0] == "x" && l[4] == "x" && l[8] == "x") {
      winp = 'x';
      c1++;
    } else if (l[2] == "x" && l[4] == "x" && l[6] == "x") {
      winp = 'x';
      c1++;
    } else if (l[0] == "x" && l[3] == "x" && l[6] == "x") {
      winp = 'x';
      c1++;
    } else if (l[1] == "x" && l[4] == "x" && l[7] == "x") {
      winp = 'x';
      c1++;
    } else if (l[2] == "x" && l[5] == "x" && l[8] == "x") {
      winp = 'x';
      c1++;
    } else if (l[0] == "0" && l[1] == "0" && l[2] == "0") {
      winp = '0';
      c1++;
    } else if (l[3] == "0" && l[4] == "0" && l[5] == "0") {
      winp = '0';
      c1++;
    } else if (l[6] == "0" && l[7] == "0" && l[8] == "0") {
      winp = '0';
      c1++;
    } else if (l[0] == "0" && l[4] == "0" && l[8] == "0") {
      winp = '0';
      c1++;
    } else if (l[2] == "0" && l[4] == "0" && l[6] == "0") {
      winp = '0';
      c1++;
    } else if (l[0] == "0" && l[3] == "0" && l[6] == "0") {
      winp = '0';
      c1++;
    } else if (l[1] == "0" && l[4] == "0" && l[7] == "0") {
      winp = '0';
      c1++;
    } else if (l[2] == "0" && l[5] == "0" && l[8] == "0") {
      winp = '0';
      c1++;
    }else if(t==5)
      {
       if(l[t]!="")
         {

         }

         winp="draw";
         t=0;


      }
  }


}

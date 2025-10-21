import 'package:flutter/material.dart';
import 'package:new_flutter_project/data/Score.dart';

class BasketBallResult extends StatefulWidget {
  const BasketBallResult({super.key});

  @override
  State<BasketBallResult> createState() => _BasketBallResultState();
}

class _BasketBallResultState extends State<BasketBallResult> {
  List<Score> scores = [Score(name: "A"), Score(name: "B")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basket Ball Result"),
        centerTitle: true,
        //leading: Icon(Icons.countertops),
        backgroundColor: Colors.amber,
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                teamFun("Team A", scores[0]),
                VerticalDivider(color: Colors.red),
                teamFun("Team B", scores[1]),
              ],
            ),
          ),

          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [
                addPointsBtn(() {
                  scores[0].value = 0;
                  scores[1].value = 0;
                }, "Reset"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column teamFun(String teamName, Score score) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Text(
                teamName,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Text(
                score.value.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 3,
          child: Column(
            children: [
              addPointsBtn(() {
                score.value++;
              }, "Add 1 Point"),
              SizedBox(height: 10),
              addPointsBtn(() {
                score.value += 2;
              }, "Add 2 Point"),
              SizedBox(height: 10),

              addPointsBtn(() {
                score.value += 3;
              }, "Add 3 Point"),
            ],
          ),
        ),
      ],
    );
  }

  MaterialButton addPointsBtn(Function onPressedFun, String txtTitle) {
    return MaterialButton(
      onPressed: () {
        onPressedFun();
        setState(() {});
      },
      color: Colors.amber,
      textColor: Colors.white,
      child: Text(txtTitle),
    );
  }
}

import 'package:flutter/material.dart';

class AnimationFeatures extends StatefulWidget {
  const AnimationFeatures({super.key});

  @override
  State<AnimationFeatures> createState() => _AnimationFeaturesState();
}

class _AnimationFeaturesState extends State<AnimationFeatures>
    with SingleTickerProviderStateMixin {
  Color boxColor = Colors.red;
  double boxRadius = 0;
  bool toggleBoxes = true;
  //
  late AnimationController _animationController;
  late Animation _animation;
  String name = "";

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this, //AnimatedGridState(),
      duration: Duration(seconds: 5),
    );
    _animation = Tween<double>(
      begin: 50.0,
      end: 100.0,
    ).animate(_animationController);

    _animation
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('Animation Finished');
        }
        print(status);
      })
      ..addListener(
        () {
          setState(() {
            name = "Flutter ${_animation.value.toInt()}";
          });
        },
      ); // = _animation.addStatusListener(listener); _animation.addListener(listener)

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        centerTitle: true,
        //leading: Icon(Icons.countertops),
        backgroundColor: Colors.blueAccent,
        actions: [],
      ),
      body: ListView(
        children: [
          sizedBox,
          Center(
            child: AnimatedContainer(
              curve: Curves.bounceIn,
              duration: Duration(seconds: 3),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(boxRadius),
              ),
              width: 100,
              height: 100,
              onEnd: () => {
                setState(() {
                  boxColor = Colors.red;
                  boxRadius = 0;
                }),
              },
            ),
          ),
          sizedBox,
          OutlinedButton(
            onPressed: () {
              setState(() {
                boxColor = Colors.green;
                boxRadius = 50;
              });
            },
            child: Text("Show Animation"),
          ),

          sizedBox,
          //AnimatedCrossFade: has 2 childern to swap between
          Center(
            child: AnimatedCrossFade(
              firstChild: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text("First"),
              ),
              secondChild: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text("Second"),
              ),
              //swap between
              crossFadeState: toggleBoxes
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 3),
              firstCurve: Curves.bounceIn,
              secondCurve: Curves.bounceInOut,
            ),
          ),
          sizedBox,
          OutlinedButton(
            onPressed: () {
              setState(() {
                toggleBoxes = !toggleBoxes;
              });
            },
            child: Text("Show Animated Cross Fade Changes"),
          ),

          sizedBox,
          Center(
            child: Text(name, style: TextStyle(fontSize: _animation.value)),
          ),

          sizedBox,
          OutlinedButton(
            onPressed: () {
              setState(() {
                _animationController.reset();
                _animationController.forward();
              });
            },
            child: Text("Show Animation Controll Forward"),
          ),
        ],
      ),
    );
  }
}

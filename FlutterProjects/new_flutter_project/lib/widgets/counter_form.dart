import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_flutter_project/data/counters.dart';

class CounterForm extends StatefulWidget {
  const CounterForm({super.key});

  @override
  State<CounterForm> createState() => _CounterFormState();
}

class _CounterFormState extends State<CounterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String nameState = "";
  int startAtState = 0;
  int incrementByState = 0;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController startAtController = TextEditingController();
    TextEditingController incrementByController = TextEditingController();
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Form"),
        centerTitle: true,
        //leading: Icon(Icons.countertops),
        backgroundColor: Colors.blueAccent,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedBox,
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Counter Name',
                hintText: 'e.g., My Happits',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers),
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the counter name';
                }
                return null;
              },
              onSaved: (value) {
                print(value);
                //_name = value;
              },
            ),
            sizedBox,
            TextFormField(
              controller: startAtController,
              decoration: const InputDecoration(
                labelText: 'Start At',
                hintText: '1',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.money),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the counter start at';
                }
                return null;
              },
              onSaved: (value) {
                print(value);
                //_name = value;
              },
            ),
            sizedBox,
            TextFormField(
              controller: incrementByController,
              decoration: const InputDecoration(
                labelText: 'Increment By',
                hintText: '1',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.money),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the counter increment by';
                }
                return null;
              },
              onSaved: (value) {
                print(value);
                //_name = value;
              },
            ),
            sizedBox,
            MaterialButton(
              onPressed: () => {
                nameState = nameController.text,
                incrementByState = int.parse(incrementByController.text),
                startAtState = int.parse(startAtController.text),
                setState(() {
                  Counter c = Counter(
                    id: Random().nextInt(100),
                    name: nameState,
                    startAt: startAtState,
                    incrementBy: incrementByState,
                  );
                  dummyCounters.add(c);
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Counter "${c.name}" added successfully!'),
                    ),
                  );
                }),
              },
              color: Colors.red,
              child: Text("Submit", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

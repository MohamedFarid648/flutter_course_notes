import 'package:flutter/material.dart';
import 'package:new_flutter_project/config/routes/route_names.dart';
import 'package:new_flutter_project/data/counters.dart';

class CountersListview extends StatefulWidget {
  const CountersListview({super.key});

  @override
  State<CountersListview> createState() => _CountersListviewState();
}

class _CountersListviewState extends State<CountersListview> {
  int counterValue = 0;
  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(height: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counters"),
        centerTitle: true,
        //leading: Icon(Icons.countertops),
        backgroundColor: Colors.blueAccent,
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   Navigator.pushNamed(context, RouteNames.counterFormScreen);
        // },
        onPressed: () async {
          // Await the navigation result
          await Navigator.pushNamed(context, RouteNames.counterFormScreen);
          // When the form screen is popped (closed), call setState
          // to force the ListView to rebuild with the new data.
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        //ListView.builder without seperated , so you should use column to add container then seperated
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: dummyCounters.length,
        itemBuilder: (context, index) {
          final counter = dummyCounters[index];
          final isEven = index % 2 == 0;
          return Container(
            color: isEven
                ? const Color.fromARGB(255, 107, 145, 175)
                : const Color.fromARGB(255, 73, 137, 189),
            child: ListTile(
              /*
               onPressed: incrementCount(counter, () {
                  setState(() {});
                }),
                Error:
                That error, "setState() or markNeedsBuild() called during build", is a very common issue in Flutter, and it's happening because of how you are calling your incrementCount and decrementCount functions inside the itemBuilder.

                When Flutter builds the ListView (during the build phase), it executes the itemBuilder function for every list item. When it encounters the onPressed line, it immediately calls incrementCount (because you are calling the function and passing its result to onPressed).

                Inside your incrementCount function, you call callSetState() (which is setState(() {})). You are essentially calling setState while the widget is currently building, which Flutter strictly forbids.

                The Solution
               */
              leading: IconButton(
                onPressed: () {
                  incrementCount(counter, () {
                    setState(() {});
                  });
                },
                icon: Icon(Icons.add),
              ),
              trailing: IconButton(
                onPressed: () {
                  decrementCount(counter, () {
                    setState(() {});
                  });
                },
                icon: Icon(Icons.minimize),
              ),
              title: Center(
                child: Text(
                  counter.name,
                  style: const TextStyle(color: Colors.white),
                ),
              ),

              subtitle: Center(
                child: Text(
                  counter.value.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              focusColor: Colors.cyan,
            ),
          );
        },
      ),
    );
  }

  decrementCount(Counter c, Function callSetState) {
    if (c.value > 0) {
      c.value -= c.incrementBy;
      callSetState();
    }
  }

  incrementCount(Counter c, Function callSetState) {
    c.value += c.incrementBy;
    callSetState();
  }
}

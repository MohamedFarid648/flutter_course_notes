/*

 */
/*
Async: Future , Streaming

1. Future
Future in dart like promise in java script
Future<String> => I will get a string value

*/

void main1() async {
  //1.1 async,await
  //should be async
  print("Loading...");
  var data = await fetchData(); //please wait my function to get data
  print(
    data,
  ); //Will print (Loading...) then after 10 sec will print (name) then (Exit)

  //Problem: App Will be break 10 seconds
  print("Exit");
}

void main2() {
  print("Loading...");

  //Sol
  //1.2 use then (We don't need using await,async)
  fetchData()
      .then((value) {
        return value;
      })
      .then((value) {
        print(value);
      });
  print("Exit");

  //Will Print(Loading...) then(Exit) then after 10s will print(Mohamed Abdullah)
}

void main() {
  Stream<int> data = countStream(5);
  //   await for (int val in data) { //should write async in main
  //     print(val); //await for every stream data and print it
  //   }

  //way 2 (we don't need async here in main)
  //subscripe for event
  data.listen((d) {
    print(d);
  });
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 10), () => "Mohamed Abdullah");
}

//2.Streaming Like(Chatting) (We need more than return)

//Like subscripe events  in js,c#
//So we will use listener
Stream<int> countStream(int to) async* {
  //Should use async*
  for (int i = 0; i <= to; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i; //will return i every 2 seconds(yield = more than return)
  }
}

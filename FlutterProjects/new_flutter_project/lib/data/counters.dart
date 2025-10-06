// ignore_for_file: public_member_api_docs, sort_constructors_first
class Counter {
  final int id;
  final String name;
  final int startAt;
  final int incrementBy;
  int value;

  Counter({
    required this.id,
    required this.name,
    required this.startAt,
    required this.incrementBy,
  }) : value = startAt;
}

final List<Counter> dummyCounters = [
  Counter(id: 1, name: "Do Something 1", startAt: 0, incrementBy: 1),
];

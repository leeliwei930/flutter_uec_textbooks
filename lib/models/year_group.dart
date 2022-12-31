import 'package:hive_flutter/hive_flutter.dart';

part 'year_group.g.dart';

@HiveType(typeId: 1)
enum YearGroup {
  @HiveField(0)
  jm1("jm1"),
  @HiveField(1)
  jm2("jm2"),
  @HiveField(2)
  jm3("jm3"),
  @HiveField(3)
  sm1("sm1"),
  @HiveField(4)
  sm2("sm2"),
  @HiveField(5)
  sm3("sm3");

  const YearGroup(this.name);

  final String name;

  @override
  String toString() => name;
}

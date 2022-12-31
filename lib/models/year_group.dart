enum YearGroup {
  jm1("jm1"),
  jm2("jm2"),
  jm3("jm3"),
  sm1("sm1"),
  sm2("sm2"),
  sm3("sm3");

  const YearGroup(this.name);

  final String name;

  @override
  String toString() => name;
}

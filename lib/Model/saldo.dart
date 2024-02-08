import 'package:hive/hive.dart';

part 'saldo.g.dart';

@HiveType(typeId: 2)
class Saldo {
  Saldo(
      {required this.userId,
      required this.balance,
      required this.criticalLimit});

  @HiveField(0)
  double userId;

  @HiveField(1)
  double balance;

  @HiveField(2)
  double criticalLimit;
}

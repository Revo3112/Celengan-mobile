import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 3)
class Transaction {
  Transaction(
      {required this.userId,
      required this.nominal,
      required this.description,
      required this.transactionType,
      required this.date});

  @HiveField(0)
  double userId;

  @HiveField(1)
  double nominal;

  @HiveField(2)
  double description;

  @HiveField(3)
  double transactionType;

  @HiveField(4)
  double date;
}

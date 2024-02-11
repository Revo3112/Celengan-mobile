import 'package:hive/hive.dart';

part 'user_record.g.dart';

@HiveType(typeId: 1)
class Person {
  Person({required this.lastid});
  @HiveField(0)
  int lastid;
}

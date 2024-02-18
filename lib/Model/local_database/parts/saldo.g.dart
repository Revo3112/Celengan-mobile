// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../saldo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaldoAdapter extends TypeAdapter<Saldo> {
  @override
  final int typeId = 2;

  @override
  Saldo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Saldo(
      userId: fields[0] as double,
      balance: fields[1] as double,
      criticalLimit: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Saldo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.balance)
      ..writeByte(2)
      ..write(obj.criticalLimit);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaldoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class YearGroupAdapter extends TypeAdapter<YearGroup> {
  @override
  final int typeId = 1;

  @override
  YearGroup read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return YearGroup.jm1;
      case 1:
        return YearGroup.jm2;
      case 2:
        return YearGroup.jm3;
      case 3:
        return YearGroup.sm1;
      case 4:
        return YearGroup.sm2;
      case 5:
        return YearGroup.sm3;
      default:
        return YearGroup.jm1;
    }
  }

  @override
  void write(BinaryWriter writer, YearGroup obj) {
    switch (obj) {
      case YearGroup.jm1:
        writer.writeByte(0);
        break;
      case YearGroup.jm2:
        writer.writeByte(1);
        break;
      case YearGroup.jm3:
        writer.writeByte(2);
        break;
      case YearGroup.sm1:
        writer.writeByte(3);
        break;
      case YearGroup.sm2:
        writer.writeByte(4);
        break;
      case YearGroup.sm3:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is YearGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

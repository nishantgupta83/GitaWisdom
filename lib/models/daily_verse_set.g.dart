// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_verse_set.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyVerseSetAdapter extends TypeAdapter<DailyVerseSet> {
  @override
  final int typeId = 2;

  @override
  DailyVerseSet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DailyVerseSet(
      date: fields[0] as String,
      verses: (fields[1] as List).cast<Verse>(),
      chapterIds: (fields[2] as List).cast<int>(),
      createdAt: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DailyVerseSet obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.verses)
      ..writeByte(2)
      ..write(obj.chapterIds)
      ..writeByte(3)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyVerseSetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

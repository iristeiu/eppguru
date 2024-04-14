import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogaritmRecord extends FirestoreRecord {
  LogaritmRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "res1" field.
  bool? _res1;
  bool get res1 => _res1 ?? false;
  bool hasRes1() => _res1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "res2" field.
  bool? _res2;
  bool get res2 => _res2 ?? false;
  bool hasRes2() => _res2 != null;

  // "option3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "res3" field.
  bool? _res3;
  bool get res3 => _res3 ?? false;
  bool hasRes3() => _res3 != null;

  // "option4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "res4" field.
  bool? _res4;
  bool get res4 => _res4 ?? false;
  bool hasRes4() => _res4 != null;

  // "option1L" field.
  String? _option1L;
  String get option1L => _option1L ?? '';
  bool hasOption1L() => _option1L != null;

  // "option2L" field.
  String? _option2L;
  String get option2L => _option2L ?? '';
  bool hasOption2L() => _option2L != null;

  // "option3L" field.
  String? _option3L;
  String get option3L => _option3L ?? '';
  bool hasOption3L() => _option3L != null;

  // "option4L" field.
  String? _option4L;
  String get option4L => _option4L ?? '';
  bool hasOption4L() => _option4L != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _question = snapshotData['question'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _res1 = snapshotData['res1'] as bool?;
    _option2 = snapshotData['option2'] as String?;
    _res2 = snapshotData['res2'] as bool?;
    _option3 = snapshotData['option3'] as String?;
    _res3 = snapshotData['res3'] as bool?;
    _option4 = snapshotData['option4'] as String?;
    _res4 = snapshotData['res4'] as bool?;
    _option1L = snapshotData['option1L'] as String?;
    _option2L = snapshotData['option2L'] as String?;
    _option3L = snapshotData['option3L'] as String?;
    _option4L = snapshotData['option4L'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Logaritm');

  static Stream<LogaritmRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogaritmRecord.fromSnapshot(s));

  static Future<LogaritmRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogaritmRecord.fromSnapshot(s));

  static LogaritmRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogaritmRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogaritmRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogaritmRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogaritmRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogaritmRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogaritmRecordData({
  int? id,
  String? question,
  String? option1,
  bool? res1,
  String? option2,
  bool? res2,
  String? option3,
  bool? res3,
  String? option4,
  bool? res4,
  String? option1L,
  String? option2L,
  String? option3L,
  String? option4L,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'question': question,
      'option1': option1,
      'res1': res1,
      'option2': option2,
      'res2': res2,
      'option3': option3,
      'res3': res3,
      'option4': option4,
      'res4': res4,
      'option1L': option1L,
      'option2L': option2L,
      'option3L': option3L,
      'option4L': option4L,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogaritmRecordDocumentEquality implements Equality<LogaritmRecord> {
  const LogaritmRecordDocumentEquality();

  @override
  bool equals(LogaritmRecord? e1, LogaritmRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.question == e2?.question &&
        e1?.option1 == e2?.option1 &&
        e1?.res1 == e2?.res1 &&
        e1?.option2 == e2?.option2 &&
        e1?.res2 == e2?.res2 &&
        e1?.option3 == e2?.option3 &&
        e1?.res3 == e2?.res3 &&
        e1?.option4 == e2?.option4 &&
        e1?.res4 == e2?.res4 &&
        e1?.option1L == e2?.option1L &&
        e1?.option2L == e2?.option2L &&
        e1?.option3L == e2?.option3L &&
        e1?.option4L == e2?.option4L;
  }

  @override
  int hash(LogaritmRecord? e) => const ListEquality().hash([
        e?.id,
        e?.question,
        e?.option1,
        e?.res1,
        e?.option2,
        e?.res2,
        e?.option3,
        e?.res3,
        e?.option4,
        e?.res4,
        e?.option1L,
        e?.option2L,
        e?.option3L,
        e?.option4L
      ]);

  @override
  bool isValidKey(Object? o) => o is LogaritmRecord;
}

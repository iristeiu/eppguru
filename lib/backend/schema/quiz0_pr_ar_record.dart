import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Quiz0PrArRecord extends FirestoreRecord {
  Quiz0PrArRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "intrebare" field.
  String? _intrebare;
  String get intrebare => _intrebare ?? '';
  bool hasIntrebare() => _intrebare != null;

  // "optiune1" field.
  int? _optiune1;
  int get optiune1 => _optiune1 ?? 0;
  bool hasOptiune1() => _optiune1 != null;

  // "optiune2" field.
  int? _optiune2;
  int get optiune2 => _optiune2 ?? 0;
  bool hasOptiune2() => _optiune2 != null;

  // "optiune3" field.
  int? _optiune3;
  int get optiune3 => _optiune3 ?? 0;
  bool hasOptiune3() => _optiune3 != null;

  // "optiune4" field.
  int? _optiune4;
  int get optiune4 => _optiune4 ?? 0;
  bool hasOptiune4() => _optiune4 != null;

  // "res1" field.
  bool? _res1;
  bool get res1 => _res1 ?? false;
  bool hasRes1() => _res1 != null;

  // "res2" field.
  bool? _res2;
  bool get res2 => _res2 ?? false;
  bool hasRes2() => _res2 != null;

  // "res3" field.
  bool? _res3;
  bool get res3 => _res3 ?? false;
  bool hasRes3() => _res3 != null;

  // "res4" field.
  bool? _res4;
  bool get res4 => _res4 ?? false;
  bool hasRes4() => _res4 != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _intrebare = snapshotData['intrebare'] as String?;
    _optiune1 = castToType<int>(snapshotData['optiune1']);
    _optiune2 = castToType<int>(snapshotData['optiune2']);
    _optiune3 = castToType<int>(snapshotData['optiune3']);
    _optiune4 = castToType<int>(snapshotData['optiune4']);
    _res1 = snapshotData['res1'] as bool?;
    _res2 = snapshotData['res2'] as bool?;
    _res3 = snapshotData['res3'] as bool?;
    _res4 = snapshotData['res4'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quiz0_pr_ar');

  static Stream<Quiz0PrArRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Quiz0PrArRecord.fromSnapshot(s));

  static Future<Quiz0PrArRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Quiz0PrArRecord.fromSnapshot(s));

  static Quiz0PrArRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Quiz0PrArRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Quiz0PrArRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Quiz0PrArRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Quiz0PrArRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Quiz0PrArRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuiz0PrArRecordData({
  int? id,
  String? intrebare,
  int? optiune1,
  int? optiune2,
  int? optiune3,
  int? optiune4,
  bool? res1,
  bool? res2,
  bool? res3,
  bool? res4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'intrebare': intrebare,
      'optiune1': optiune1,
      'optiune2': optiune2,
      'optiune3': optiune3,
      'optiune4': optiune4,
      'res1': res1,
      'res2': res2,
      'res3': res3,
      'res4': res4,
    }.withoutNulls,
  );

  return firestoreData;
}

class Quiz0PrArRecordDocumentEquality implements Equality<Quiz0PrArRecord> {
  const Quiz0PrArRecordDocumentEquality();

  @override
  bool equals(Quiz0PrArRecord? e1, Quiz0PrArRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.intrebare == e2?.intrebare &&
        e1?.optiune1 == e2?.optiune1 &&
        e1?.optiune2 == e2?.optiune2 &&
        e1?.optiune3 == e2?.optiune3 &&
        e1?.optiune4 == e2?.optiune4 &&
        e1?.res1 == e2?.res1 &&
        e1?.res2 == e2?.res2 &&
        e1?.res3 == e2?.res3 &&
        e1?.res4 == e2?.res4;
  }

  @override
  int hash(Quiz0PrArRecord? e) => const ListEquality().hash([
        e?.id,
        e?.intrebare,
        e?.optiune1,
        e?.optiune2,
        e?.optiune3,
        e?.optiune4,
        e?.res1,
        e?.res2,
        e?.res3,
        e?.res4
      ]);

  @override
  bool isValidKey(Object? o) => o is Quiz0PrArRecord;
}

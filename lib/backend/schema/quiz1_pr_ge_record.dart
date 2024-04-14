import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Quiz1PrGeRecord extends FirestoreRecord {
  Quiz1PrGeRecord._(
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

  // "id_quiz" field.
  int? _idQuiz;
  int get idQuiz => _idQuiz ?? 0;
  bool hasIdQuiz() => _idQuiz != null;

  // "subcapitol_id" field.
  DocumentReference? _subcapitolId;
  DocumentReference? get subcapitolId => _subcapitolId;
  bool hasSubcapitolId() => _subcapitolId != null;

  // "optiune1" field.
  String? _optiune1;
  String get optiune1 => _optiune1 ?? '';
  bool hasOptiune1() => _optiune1 != null;

  // "optiune2" field.
  String? _optiune2;
  String get optiune2 => _optiune2 ?? '';
  bool hasOptiune2() => _optiune2 != null;

  // "optiune3" field.
  String? _optiune3;
  String get optiune3 => _optiune3 ?? '';
  bool hasOptiune3() => _optiune3 != null;

  // "optiune4" field.
  String? _optiune4;
  String get optiune4 => _optiune4 ?? '';
  bool hasOptiune4() => _optiune4 != null;

  // "optiune1L" field.
  String? _optiune1L;
  String get optiune1L => _optiune1L ?? '';
  bool hasOptiune1L() => _optiune1L != null;

  // "optiune2L" field.
  String? _optiune2L;
  String get optiune2L => _optiune2L ?? '';
  bool hasOptiune2L() => _optiune2L != null;

  // "optiune3L" field.
  String? _optiune3L;
  String get optiune3L => _optiune3L ?? '';
  bool hasOptiune3L() => _optiune3L != null;

  // "optiune4L" field.
  String? _optiune4L;
  String get optiune4L => _optiune4L ?? '';
  bool hasOptiune4L() => _optiune4L != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _intrebare = snapshotData['intrebare'] as String?;
    _res1 = snapshotData['res1'] as bool?;
    _res2 = snapshotData['res2'] as bool?;
    _res3 = snapshotData['res3'] as bool?;
    _res4 = snapshotData['res4'] as bool?;
    _idQuiz = castToType<int>(snapshotData['id_quiz']);
    _subcapitolId = snapshotData['subcapitol_id'] as DocumentReference?;
    _optiune1 = snapshotData['optiune1'] as String?;
    _optiune2 = snapshotData['optiune2'] as String?;
    _optiune3 = snapshotData['optiune3'] as String?;
    _optiune4 = snapshotData['optiune4'] as String?;
    _optiune1L = snapshotData['optiune1L'] as String?;
    _optiune2L = snapshotData['optiune2L'] as String?;
    _optiune3L = snapshotData['optiune3L'] as String?;
    _optiune4L = snapshotData['optiune4L'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quiz1_pr_ge');

  static Stream<Quiz1PrGeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Quiz1PrGeRecord.fromSnapshot(s));

  static Future<Quiz1PrGeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Quiz1PrGeRecord.fromSnapshot(s));

  static Quiz1PrGeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Quiz1PrGeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Quiz1PrGeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Quiz1PrGeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Quiz1PrGeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Quiz1PrGeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuiz1PrGeRecordData({
  int? id,
  String? intrebare,
  bool? res1,
  bool? res2,
  bool? res3,
  bool? res4,
  int? idQuiz,
  DocumentReference? subcapitolId,
  String? optiune1,
  String? optiune2,
  String? optiune3,
  String? optiune4,
  String? optiune1L,
  String? optiune2L,
  String? optiune3L,
  String? optiune4L,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'intrebare': intrebare,
      'res1': res1,
      'res2': res2,
      'res3': res3,
      'res4': res4,
      'id_quiz': idQuiz,
      'subcapitol_id': subcapitolId,
      'optiune1': optiune1,
      'optiune2': optiune2,
      'optiune3': optiune3,
      'optiune4': optiune4,
      'optiune1L': optiune1L,
      'optiune2L': optiune2L,
      'optiune3L': optiune3L,
      'optiune4L': optiune4L,
    }.withoutNulls,
  );

  return firestoreData;
}

class Quiz1PrGeRecordDocumentEquality implements Equality<Quiz1PrGeRecord> {
  const Quiz1PrGeRecordDocumentEquality();

  @override
  bool equals(Quiz1PrGeRecord? e1, Quiz1PrGeRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.intrebare == e2?.intrebare &&
        e1?.res1 == e2?.res1 &&
        e1?.res2 == e2?.res2 &&
        e1?.res3 == e2?.res3 &&
        e1?.res4 == e2?.res4 &&
        e1?.idQuiz == e2?.idQuiz &&
        e1?.subcapitolId == e2?.subcapitolId &&
        e1?.optiune1 == e2?.optiune1 &&
        e1?.optiune2 == e2?.optiune2 &&
        e1?.optiune3 == e2?.optiune3 &&
        e1?.optiune4 == e2?.optiune4 &&
        e1?.optiune1L == e2?.optiune1L &&
        e1?.optiune2L == e2?.optiune2L &&
        e1?.optiune3L == e2?.optiune3L &&
        e1?.optiune4L == e2?.optiune4L;
  }

  @override
  int hash(Quiz1PrGeRecord? e) => const ListEquality().hash([
        e?.id,
        e?.intrebare,
        e?.res1,
        e?.res2,
        e?.res3,
        e?.res4,
        e?.idQuiz,
        e?.subcapitolId,
        e?.optiune1,
        e?.optiune2,
        e?.optiune3,
        e?.optiune4,
        e?.optiune1L,
        e?.optiune2L,
        e?.optiune3L,
        e?.optiune4L
      ]);

  @override
  bool isValidKey(Object? o) => o is Quiz1PrGeRecord;
}

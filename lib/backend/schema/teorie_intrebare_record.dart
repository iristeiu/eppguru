import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TeorieIntrebareRecord extends FirestoreRecord {
  TeorieIntrebareRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Teorie" field.
  String? _teorie;
  String get teorie => _teorie ?? '';
  bool hasTeorie() => _teorie != null;

  // "Intreabare" field.
  String? _intreabare;
  String get intreabare => _intreabare ?? '';
  bool hasIntreabare() => _intreabare != null;

  // "Raspuns" field.
  String? _raspuns;
  String get raspuns => _raspuns ?? '';
  bool hasRaspuns() => _raspuns != null;

  void _initializeFields() {
    _teorie = snapshotData['Teorie'] as String?;
    _intreabare = snapshotData['Intreabare'] as String?;
    _raspuns = snapshotData['Raspuns'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TeorieIntrebare');

  static Stream<TeorieIntrebareRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeorieIntrebareRecord.fromSnapshot(s));

  static Future<TeorieIntrebareRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeorieIntrebareRecord.fromSnapshot(s));

  static TeorieIntrebareRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeorieIntrebareRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeorieIntrebareRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeorieIntrebareRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeorieIntrebareRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeorieIntrebareRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeorieIntrebareRecordData({
  String? teorie,
  String? intreabare,
  String? raspuns,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Teorie': teorie,
      'Intreabare': intreabare,
      'Raspuns': raspuns,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeorieIntrebareRecordDocumentEquality
    implements Equality<TeorieIntrebareRecord> {
  const TeorieIntrebareRecordDocumentEquality();

  @override
  bool equals(TeorieIntrebareRecord? e1, TeorieIntrebareRecord? e2) {
    return e1?.teorie == e2?.teorie &&
        e1?.intreabare == e2?.intreabare &&
        e1?.raspuns == e2?.raspuns;
  }

  @override
  int hash(TeorieIntrebareRecord? e) =>
      const ListEquality().hash([e?.teorie, e?.intreabare, e?.raspuns]);

  @override
  bool isValidKey(Object? o) => o is TeorieIntrebareRecord;
}

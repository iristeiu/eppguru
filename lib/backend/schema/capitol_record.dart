import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CapitolRecord extends FirestoreRecord {
  CapitolRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "nume" field.
  String? _nume;
  String get nume => _nume ?? '';
  bool hasNume() => _nume != null;

  // "subcapitole" field.
  int? _subcapitole;
  int get subcapitole => _subcapitole ?? 0;
  bool hasSubcapitole() => _subcapitole != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _nume = snapshotData['nume'] as String?;
    _subcapitole = castToType<int>(snapshotData['subcapitole']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Capitol');

  static Stream<CapitolRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CapitolRecord.fromSnapshot(s));

  static Future<CapitolRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CapitolRecord.fromSnapshot(s));

  static CapitolRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CapitolRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CapitolRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CapitolRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CapitolRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CapitolRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCapitolRecordData({
  int? id,
  String? nume,
  int? subcapitole,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nume': nume,
      'subcapitole': subcapitole,
    }.withoutNulls,
  );

  return firestoreData;
}

class CapitolRecordDocumentEquality implements Equality<CapitolRecord> {
  const CapitolRecordDocumentEquality();

  @override
  bool equals(CapitolRecord? e1, CapitolRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nume == e2?.nume &&
        e1?.subcapitole == e2?.subcapitole;
  }

  @override
  int hash(CapitolRecord? e) =>
      const ListEquality().hash([e?.id, e?.nume, e?.subcapitole]);

  @override
  bool isValidKey(Object? o) => o is CapitolRecord;
}

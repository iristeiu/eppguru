import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcapitoleRecord extends FirestoreRecord {
  SubcapitoleRecord._(
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

  // "capitol_id" field.
  DocumentReference? _capitolId;
  DocumentReference? get capitolId => _capitolId;
  bool hasCapitolId() => _capitolId != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _nume = snapshotData['nume'] as String?;
    _capitolId = snapshotData['capitol_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Subcapitole');

  static Stream<SubcapitoleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcapitoleRecord.fromSnapshot(s));

  static Future<SubcapitoleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubcapitoleRecord.fromSnapshot(s));

  static SubcapitoleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcapitoleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcapitoleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcapitoleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcapitoleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcapitoleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcapitoleRecordData({
  int? id,
  String? nume,
  DocumentReference? capitolId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nume': nume,
      'capitol_id': capitolId,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcapitoleRecordDocumentEquality implements Equality<SubcapitoleRecord> {
  const SubcapitoleRecordDocumentEquality();

  @override
  bool equals(SubcapitoleRecord? e1, SubcapitoleRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nume == e2?.nume &&
        e1?.capitolId == e2?.capitolId;
  }

  @override
  int hash(SubcapitoleRecord? e) =>
      const ListEquality().hash([e?.id, e?.nume, e?.capitolId]);

  @override
  bool isValidKey(Object? o) => o is SubcapitoleRecord;
}

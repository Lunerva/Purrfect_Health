import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordatoriosRecord extends FirestoreRecord {
  RecordatoriosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Frecuencia" field.
  int? _frecuencia;
  int get frecuencia => _frecuencia ?? 0;
  bool hasFrecuencia() => _frecuencia != null;

  // "CitaID" field.
  DocumentReference? _citaID;
  DocumentReference? get citaID => _citaID;
  bool hasCitaID() => _citaID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fecha = snapshotData['Fecha'] as DateTime?;
    _frecuencia = castToType<int>(snapshotData['Frecuencia']);
    _citaID = snapshotData['CitaID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Recordatorios')
          : FirebaseFirestore.instance.collectionGroup('Recordatorios');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Recordatorios').doc(id);

  static Stream<RecordatoriosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordatoriosRecord.fromSnapshot(s));

  static Future<RecordatoriosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordatoriosRecord.fromSnapshot(s));

  static RecordatoriosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordatoriosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordatoriosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordatoriosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordatoriosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordatoriosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordatoriosRecordData({
  DateTime? fecha,
  int? frecuencia,
  DocumentReference? citaID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha': fecha,
      'Frecuencia': frecuencia,
      'CitaID': citaID,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordatoriosRecordDocumentEquality
    implements Equality<RecordatoriosRecord> {
  const RecordatoriosRecordDocumentEquality();

  @override
  bool equals(RecordatoriosRecord? e1, RecordatoriosRecord? e2) {
    return e1?.fecha == e2?.fecha &&
        e1?.frecuencia == e2?.frecuencia &&
        e1?.citaID == e2?.citaID;
  }

  @override
  int hash(RecordatoriosRecord? e) =>
      const ListEquality().hash([e?.fecha, e?.frecuencia, e?.citaID]);

  @override
  bool isValidKey(Object? o) => o is RecordatoriosRecord;
}

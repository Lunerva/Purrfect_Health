import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "Lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "MascotaID" field.
  DocumentReference? _mascotaID;
  DocumentReference? get mascotaID => _mascotaID;
  bool hasMascotaID() => _mascotaID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fecha = snapshotData['Fecha'] as DateTime?;
    _motivo = snapshotData['Motivo'] as String?;
    _lugar = snapshotData['Lugar'] as String?;
    _mascotaID = snapshotData['MascotaID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Citas')
          : FirebaseFirestore.instance.collectionGroup('Citas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Citas').doc(id);

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DateTime? fecha,
  String? motivo,
  String? lugar,
  DocumentReference? mascotaID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha': fecha,
      'Motivo': motivo,
      'Lugar': lugar,
      'MascotaID': mascotaID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.fecha == e2?.fecha &&
        e1?.motivo == e2?.motivo &&
        e1?.lugar == e2?.lugar &&
        e1?.mascotaID == e2?.mascotaID;
  }

  @override
  int hash(CitasRecord? e) =>
      const ListEquality().hash([e?.fecha, e?.motivo, e?.lugar, e?.mascotaID]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}

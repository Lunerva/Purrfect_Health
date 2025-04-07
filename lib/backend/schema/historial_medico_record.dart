import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialMedicoRecord extends FirestoreRecord {
  HistorialMedicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mascotaID" field.
  String? _mascotaID;
  String get mascotaID => _mascotaID ?? '';
  bool hasMascotaID() => _mascotaID != null;

  // "diagnostico" field.
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  bool hasDiagnostico() => _diagnostico != null;

  // "tratamiento" field.
  String? _tratamiento;
  String get tratamiento => _tratamiento ?? '';
  bool hasTratamiento() => _tratamiento != null;

  // "veterinarioID" field.
  String? _veterinarioID;
  String get veterinarioID => _veterinarioID ?? '';
  bool hasVeterinarioID() => _veterinarioID != null;

  // "fechaRev" field.
  DateTime? _fechaRev;
  DateTime? get fechaRev => _fechaRev;
  bool hasFechaRev() => _fechaRev != null;

  void _initializeFields() {
    _mascotaID = snapshotData['mascotaID'] as String?;
    _diagnostico = snapshotData['diagnostico'] as String?;
    _tratamiento = snapshotData['tratamiento'] as String?;
    _veterinarioID = snapshotData['veterinarioID'] as String?;
    _fechaRev = snapshotData['fechaRev'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historialMedico');

  static Stream<HistorialMedicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialMedicoRecord.fromSnapshot(s));

  static Future<HistorialMedicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistorialMedicoRecord.fromSnapshot(s));

  static HistorialMedicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialMedicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialMedicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialMedicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialMedicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialMedicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialMedicoRecordData({
  String? mascotaID,
  String? diagnostico,
  String? tratamiento,
  String? veterinarioID,
  DateTime? fechaRev,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mascotaID': mascotaID,
      'diagnostico': diagnostico,
      'tratamiento': tratamiento,
      'veterinarioID': veterinarioID,
      'fechaRev': fechaRev,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialMedicoRecordDocumentEquality
    implements Equality<HistorialMedicoRecord> {
  const HistorialMedicoRecordDocumentEquality();

  @override
  bool equals(HistorialMedicoRecord? e1, HistorialMedicoRecord? e2) {
    return e1?.mascotaID == e2?.mascotaID &&
        e1?.diagnostico == e2?.diagnostico &&
        e1?.tratamiento == e2?.tratamiento &&
        e1?.veterinarioID == e2?.veterinarioID &&
        e1?.fechaRev == e2?.fechaRev;
  }

  @override
  int hash(HistorialMedicoRecord? e) => const ListEquality().hash([
        e?.mascotaID,
        e?.diagnostico,
        e?.tratamiento,
        e?.veterinarioID,
        e?.fechaRev
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorialMedicoRecord;
}

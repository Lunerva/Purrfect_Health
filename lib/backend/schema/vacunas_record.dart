import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacunasRecord extends FirestoreRecord {
  VacunasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "FechaAplicacion" field.
  DateTime? _fechaAplicacion;
  DateTime? get fechaAplicacion => _fechaAplicacion;
  bool hasFechaAplicacion() => _fechaAplicacion != null;

  // "ProximaDosis" field.
  DateTime? _proximaDosis;
  DateTime? get proximaDosis => _proximaDosis;
  bool hasProximaDosis() => _proximaDosis != null;

  // "Lote" field.
  String? _lote;
  String get lote => _lote ?? '';
  bool hasLote() => _lote != null;

  // "Observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "MascotaID" field.
  DocumentReference? _mascotaID;
  DocumentReference? get mascotaID => _mascotaID;
  bool hasMascotaID() => _mascotaID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _fechaAplicacion = snapshotData['FechaAplicacion'] as DateTime?;
    _proximaDosis = snapshotData['ProximaDosis'] as DateTime?;
    _lote = snapshotData['Lote'] as String?;
    _observaciones = snapshotData['Observaciones'] as String?;
    _mascotaID = snapshotData['MascotaID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Vacunas')
          : FirebaseFirestore.instance.collectionGroup('Vacunas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Vacunas').doc(id);

  static Stream<VacunasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacunasRecord.fromSnapshot(s));

  static Future<VacunasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacunasRecord.fromSnapshot(s));

  static VacunasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacunasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacunasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacunasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacunasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacunasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacunasRecordData({
  String? nombre,
  DateTime? fechaAplicacion,
  DateTime? proximaDosis,
  String? lote,
  String? observaciones,
  DocumentReference? mascotaID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'FechaAplicacion': fechaAplicacion,
      'ProximaDosis': proximaDosis,
      'Lote': lote,
      'Observaciones': observaciones,
      'MascotaID': mascotaID,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacunasRecordDocumentEquality implements Equality<VacunasRecord> {
  const VacunasRecordDocumentEquality();

  @override
  bool equals(VacunasRecord? e1, VacunasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.fechaAplicacion == e2?.fechaAplicacion &&
        e1?.proximaDosis == e2?.proximaDosis &&
        e1?.lote == e2?.lote &&
        e1?.observaciones == e2?.observaciones &&
        e1?.mascotaID == e2?.mascotaID;
  }

  @override
  int hash(VacunasRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.fechaAplicacion,
        e?.proximaDosis,
        e?.lote,
        e?.observaciones,
        e?.mascotaID
      ]);

  @override
  bool isValidKey(Object? o) => o is VacunasRecord;
}

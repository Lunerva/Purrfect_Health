import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialMedicoRecord extends FirestoreRecord {
  HistorialMedicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Archivo" field.
  String? _archivo;
  String get archivo => _archivo ?? '';
  bool hasArchivo() => _archivo != null;

  // "Veterinario" field.
  String? _veterinario;
  String get veterinario => _veterinario ?? '';
  bool hasVeterinario() => _veterinario != null;

  // "MascotaID" field.
  DocumentReference? _mascotaID;
  DocumentReference? get mascotaID => _mascotaID;
  bool hasMascotaID() => _mascotaID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tipo = snapshotData['Tipo'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _archivo = snapshotData['Archivo'] as String?;
    _veterinario = snapshotData['Veterinario'] as String?;
    _mascotaID = snapshotData['MascotaID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('historialMedico')
          : FirebaseFirestore.instance.collectionGroup('historialMedico');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('historialMedico').doc(id);

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
  String? tipo,
  String? descripcion,
  DateTime? fecha,
  String? archivo,
  String? veterinario,
  DocumentReference? mascotaID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tipo': tipo,
      'Descripcion': descripcion,
      'Fecha': fecha,
      'Archivo': archivo,
      'Veterinario': veterinario,
      'MascotaID': mascotaID,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialMedicoRecordDocumentEquality
    implements Equality<HistorialMedicoRecord> {
  const HistorialMedicoRecordDocumentEquality();

  @override
  bool equals(HistorialMedicoRecord? e1, HistorialMedicoRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.archivo == e2?.archivo &&
        e1?.veterinario == e2?.veterinario &&
        e1?.mascotaID == e2?.mascotaID;
  }

  @override
  int hash(HistorialMedicoRecord? e) => const ListEquality().hash([
        e?.tipo,
        e?.descripcion,
        e?.fecha,
        e?.archivo,
        e?.veterinario,
        e?.mascotaID
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorialMedicoRecord;
}

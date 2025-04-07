import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotasRecord extends FirestoreRecord {
  MascotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Especie" field.
  String? _especie;
  String get especie => _especie ?? '';
  bool hasEspecie() => _especie != null;

  // "Raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "FechaNacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "Sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _especie = snapshotData['Especie'] as String?;
    _raza = snapshotData['Raza'] as String?;
    _fechaNacimiento = snapshotData['FechaNacimiento'] as DateTime?;
    _sexo = snapshotData['Sexo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mascotas')
          : FirebaseFirestore.instance.collectionGroup('mascotas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('mascotas').doc(id);

  static Stream<MascotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MascotasRecord.fromSnapshot(s));

  static Future<MascotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MascotasRecord.fromSnapshot(s));

  static MascotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MascotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MascotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MascotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MascotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MascotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMascotasRecordData({
  String? nombre,
  String? especie,
  String? raza,
  DateTime? fechaNacimiento,
  String? sexo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Especie': especie,
      'Raza': raza,
      'FechaNacimiento': fechaNacimiento,
      'Sexo': sexo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MascotasRecordDocumentEquality implements Equality<MascotasRecord> {
  const MascotasRecordDocumentEquality();

  @override
  bool equals(MascotasRecord? e1, MascotasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.especie == e2?.especie &&
        e1?.raza == e2?.raza &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.sexo == e2?.sexo;
  }

  @override
  int hash(MascotasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.especie, e?.raza, e?.fechaNacimiento, e?.sexo]);

  @override
  bool isValidKey(Object? o) => o is MascotasRecord;
}

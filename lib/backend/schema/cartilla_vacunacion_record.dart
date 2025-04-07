import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartillaVacunacionRecord extends FirestoreRecord {
  CartillaVacunacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mascotaID" field.
  String? _mascotaID;
  String get mascotaID => _mascotaID ?? '';
  bool hasMascotaID() => _mascotaID != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "fechaAd" field.
  DateTime? _fechaAd;
  DateTime? get fechaAd => _fechaAd;
  bool hasFechaAd() => _fechaAd != null;

  // "fechaSig" field.
  DateTime? _fechaSig;
  DateTime? get fechaSig => _fechaSig;
  bool hasFechaSig() => _fechaSig != null;

  // "veterinarioID" field.
  String? _veterinarioID;
  String get veterinarioID => _veterinarioID ?? '';
  bool hasVeterinarioID() => _veterinarioID != null;

  void _initializeFields() {
    _mascotaID = snapshotData['mascotaID'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _fechaAd = snapshotData['fechaAd'] as DateTime?;
    _fechaSig = snapshotData['fechaSig'] as DateTime?;
    _veterinarioID = snapshotData['veterinarioID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cartilla_vacunacion');

  static Stream<CartillaVacunacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartillaVacunacionRecord.fromSnapshot(s));

  static Future<CartillaVacunacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CartillaVacunacionRecord.fromSnapshot(s));

  static CartillaVacunacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartillaVacunacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartillaVacunacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartillaVacunacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartillaVacunacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartillaVacunacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartillaVacunacionRecordData({
  String? mascotaID,
  String? nombre,
  DateTime? fechaAd,
  DateTime? fechaSig,
  String? veterinarioID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mascotaID': mascotaID,
      'nombre': nombre,
      'fechaAd': fechaAd,
      'fechaSig': fechaSig,
      'veterinarioID': veterinarioID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartillaVacunacionRecordDocumentEquality
    implements Equality<CartillaVacunacionRecord> {
  const CartillaVacunacionRecordDocumentEquality();

  @override
  bool equals(CartillaVacunacionRecord? e1, CartillaVacunacionRecord? e2) {
    return e1?.mascotaID == e2?.mascotaID &&
        e1?.nombre == e2?.nombre &&
        e1?.fechaAd == e2?.fechaAd &&
        e1?.fechaSig == e2?.fechaSig &&
        e1?.veterinarioID == e2?.veterinarioID;
  }

  @override
  int hash(CartillaVacunacionRecord? e) => const ListEquality().hash(
      [e?.mascotaID, e?.nombre, e?.fechaAd, e?.fechaSig, e?.veterinarioID]);

  @override
  bool isValidKey(Object? o) => o is CartillaVacunacionRecord;
}

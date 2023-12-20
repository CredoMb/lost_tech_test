import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObjectsFoundRecord extends FirestoreRecord {
  ObjectsFoundRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "found_date" field.
  DateTime? _foundDate;
  DateTime? get foundDate => _foundDate;
  bool hasFoundDate() => _foundDate != null;

  // "is_claimed" field.
  bool? _isClaimed;
  bool get isClaimed => _isClaimed ?? false;
  bool hasIsClaimed() => _isClaimed != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "type" field.
  ObjectTypes? _type;
  ObjectTypes? get type => _type;
  bool hasType() => _type != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _foundDate = snapshotData['found_date'] as DateTime?;
    _isClaimed = snapshotData['is_claimed'] as bool?;
    _color = getSchemaColor(snapshotData['color']);
    _brand = snapshotData['brand'] as String?;
    _type = deserializeEnum<ObjectTypes>(snapshotData['type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('objects_found');

  static Stream<ObjectsFoundRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ObjectsFoundRecord.fromSnapshot(s));

  static Future<ObjectsFoundRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ObjectsFoundRecord.fromSnapshot(s));

  static ObjectsFoundRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ObjectsFoundRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ObjectsFoundRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ObjectsFoundRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ObjectsFoundRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ObjectsFoundRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createObjectsFoundRecordData({
  String? name,
  String? description,
  DateTime? foundDate,
  bool? isClaimed,
  Color? color,
  String? brand,
  ObjectTypes? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'found_date': foundDate,
      'is_claimed': isClaimed,
      'color': color,
      'brand': brand,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ObjectsFoundRecordDocumentEquality
    implements Equality<ObjectsFoundRecord> {
  const ObjectsFoundRecordDocumentEquality();

  @override
  bool equals(ObjectsFoundRecord? e1, ObjectsFoundRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.foundDate == e2?.foundDate &&
        e1?.isClaimed == e2?.isClaimed &&
        e1?.color == e2?.color &&
        e1?.brand == e2?.brand &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ObjectsFoundRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.foundDate,
        e?.isClaimed,
        e?.color,
        e?.brand,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is ObjectsFoundRecord;
}

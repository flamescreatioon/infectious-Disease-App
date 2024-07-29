import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RealTimeUpdatesRecord extends FirestoreRecord {
  RealTimeUpdatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "latestUpdates" field.
  String? _latestUpdates;
  String get latestUpdates => _latestUpdates ?? '';
  bool hasLatestUpdates() => _latestUpdates != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "numCases" field.
  int? _numCases;
  int get numCases => _numCases ?? 0;
  bool hasNumCases() => _numCases != null;

  // "Disease" field.
  String? _disease;
  String get disease => _disease ?? '';
  bool hasDisease() => _disease != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _latestUpdates = snapshotData['latestUpdates'] as String?;
    _location = snapshotData['location'] as String?;
    _numCases = castToType<int>(snapshotData['numCases']);
    _disease = snapshotData['Disease'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('realTimeUpdates')
          : FirebaseFirestore.instance.collectionGroup('realTimeUpdates');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('realTimeUpdates').doc(id);

  static Stream<RealTimeUpdatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RealTimeUpdatesRecord.fromSnapshot(s));

  static Future<RealTimeUpdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RealTimeUpdatesRecord.fromSnapshot(s));

  static RealTimeUpdatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RealTimeUpdatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RealTimeUpdatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RealTimeUpdatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RealTimeUpdatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RealTimeUpdatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRealTimeUpdatesRecordData({
  String? latestUpdates,
  String? location,
  int? numCases,
  String? disease,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'latestUpdates': latestUpdates,
      'location': location,
      'numCases': numCases,
      'Disease': disease,
    }.withoutNulls,
  );

  return firestoreData;
}

class RealTimeUpdatesRecordDocumentEquality
    implements Equality<RealTimeUpdatesRecord> {
  const RealTimeUpdatesRecordDocumentEquality();

  @override
  bool equals(RealTimeUpdatesRecord? e1, RealTimeUpdatesRecord? e2) {
    return e1?.latestUpdates == e2?.latestUpdates &&
        e1?.location == e2?.location &&
        e1?.numCases == e2?.numCases &&
        e1?.disease == e2?.disease;
  }

  @override
  int hash(RealTimeUpdatesRecord? e) => const ListEquality()
      .hash([e?.latestUpdates, e?.location, e?.numCases, e?.disease]);

  @override
  bool isValidKey(Object? o) => o is RealTimeUpdatesRecord;
}

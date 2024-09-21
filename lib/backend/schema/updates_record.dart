import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatesRecord extends FirestoreRecord {
  UpdatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "report_type" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  bool hasReportType() => _reportType != null;

  // "report_author" field.
  String? _reportAuthor;
  String get reportAuthor => _reportAuthor ?? '';
  bool hasReportAuthor() => _reportAuthor != null;

  // "diseaseType" field.
  String? _diseaseType;
  String get diseaseType => _diseaseType ?? '';
  bool hasDiseaseType() => _diseaseType != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _reportType = snapshotData['report_type'] as String?;
    _reportAuthor = snapshotData['report_author'] as String?;
    _diseaseType = snapshotData['diseaseType'] as String?;
    _symptoms = getDataList(snapshotData['symptoms']);
    _location = snapshotData['Location'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Updates');

  static Stream<UpdatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UpdatesRecord.fromSnapshot(s));

  static Future<UpdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UpdatesRecord.fromSnapshot(s));

  static UpdatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UpdatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UpdatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UpdatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UpdatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UpdatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUpdatesRecordData({
  String? reportType,
  String? reportAuthor,
  String? diseaseType,
  String? location,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'report_type': reportType,
      'report_author': reportAuthor,
      'diseaseType': diseaseType,
      'Location': location,
      'phoneNumber': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UpdatesRecordDocumentEquality implements Equality<UpdatesRecord> {
  const UpdatesRecordDocumentEquality();

  @override
  bool equals(UpdatesRecord? e1, UpdatesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reportType == e2?.reportType &&
        e1?.reportAuthor == e2?.reportAuthor &&
        e1?.diseaseType == e2?.diseaseType &&
        listEquality.equals(e1?.symptoms, e2?.symptoms) &&
        e1?.location == e2?.location &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UpdatesRecord? e) => const ListEquality().hash([
        e?.reportType,
        e?.reportAuthor,
        e?.diseaseType,
        e?.symptoms,
        e?.location,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UpdatesRecord;
}

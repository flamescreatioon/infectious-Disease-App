import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiseaseReportRecord extends FirestoreRecord {
  DiseaseReportRecord._(
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
      FirebaseFirestore.instance.collection('disease_report');

  static Stream<DiseaseReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiseaseReportRecord.fromSnapshot(s));

  static Future<DiseaseReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiseaseReportRecord.fromSnapshot(s));

  static DiseaseReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiseaseReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiseaseReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiseaseReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiseaseReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiseaseReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiseaseReportRecordData({
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

class DiseaseReportRecordDocumentEquality
    implements Equality<DiseaseReportRecord> {
  const DiseaseReportRecordDocumentEquality();

  @override
  bool equals(DiseaseReportRecord? e1, DiseaseReportRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reportType == e2?.reportType &&
        e1?.reportAuthor == e2?.reportAuthor &&
        e1?.diseaseType == e2?.diseaseType &&
        listEquality.equals(e1?.symptoms, e2?.symptoms) &&
        e1?.location == e2?.location &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(DiseaseReportRecord? e) => const ListEquality().hash([
        e?.reportType,
        e?.reportAuthor,
        e?.diseaseType,
        e?.symptoms,
        e?.location,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is DiseaseReportRecord;
}

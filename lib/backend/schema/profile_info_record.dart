import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileInfoRecord extends FirestoreRecord {
  ProfileInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "Bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _state = snapshotData['State'] as String?;
    _bio = snapshotData['Bio'] as String?;
    _address = snapshotData['Address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profileInfo');

  static Stream<ProfileInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfileInfoRecord.fromSnapshot(s));

  static Future<ProfileInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfileInfoRecord.fromSnapshot(s));

  static ProfileInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfileInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfileInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfileInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfileInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfileInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfileInfoRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  String? state,
  String? bio,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'State': state,
      'Bio': bio,
      'Address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfileInfoRecordDocumentEquality implements Equality<ProfileInfoRecord> {
  const ProfileInfoRecordDocumentEquality();

  @override
  bool equals(ProfileInfoRecord? e1, ProfileInfoRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.address == e2?.address;
  }

  @override
  int hash(ProfileInfoRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.state,
        e?.bio,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfileInfoRecord;
}

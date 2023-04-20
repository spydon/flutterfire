// Autogenerated from Pigeon (v9.2.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

/// The type of operation that generated the action code from calling
/// [checkActionCode].
enum ActionCodeInfoOperation {
  /// Unknown operation.
  unknown,

  /// Password reset code generated via [sendPasswordResetEmail].
  passwordReset,

  /// Email verification code generated via [User.sendEmailVerification].
  verifyEmail,

  /// Email change revocation code generated via [User.updateEmail].
  recoverEmail,

  /// Email sign in code generated via [sendSignInLinkToEmail].
  emailSignIn,

  /// Verify and change email code generated via [User.verifyBeforeUpdateEmail].
  verifyAndChangeEmail,

  /// Action code for reverting second factor addition.
  revertSecondFactorAddition,
}

class PigeonMultiFactorSession {
  PigeonMultiFactorSession({
    required this.id,
  });

  String id;

  Object encode() {
    return <Object?>[
      id,
    ];
  }

  static PigeonMultiFactorSession decode(Object result) {
    result as List<Object?>;
    return PigeonMultiFactorSession(
      id: result[0]! as String,
    );
  }
}

class PigeonPhoneMultiFactorAssertion {
  PigeonPhoneMultiFactorAssertion({
    required this.verificationId,
    required this.verificationCode,
  });

  String verificationId;

  String verificationCode;

  Object encode() {
    return <Object?>[
      verificationId,
      verificationCode,
    ];
  }

  static PigeonPhoneMultiFactorAssertion decode(Object result) {
    result as List<Object?>;
    return PigeonPhoneMultiFactorAssertion(
      verificationId: result[0]! as String,
      verificationCode: result[1]! as String,
    );
  }
}

class PigeonMultiFactorInfo {
  PigeonMultiFactorInfo({
    this.displayName,
    required this.enrollmentTimestamp,
    this.factorId,
    required this.uid,
    this.phoneNumber,
  });

  String? displayName;

  double enrollmentTimestamp;

  String? factorId;

  String uid;

  String? phoneNumber;

  Object encode() {
    return <Object?>[
      displayName,
      enrollmentTimestamp,
      factorId,
      uid,
      phoneNumber,
    ];
  }

  static PigeonMultiFactorInfo decode(Object result) {
    result as List<Object?>;
    return PigeonMultiFactorInfo(
      displayName: result[0] as String?,
      enrollmentTimestamp: result[1]! as double,
      factorId: result[2] as String?,
      uid: result[3]! as String,
      phoneNumber: result[4] as String?,
    );
  }
}

class PigeonFirebaseApp {
  PigeonFirebaseApp({
    required this.appName,
    this.tenantId,
  });

  String appName;

  String? tenantId;

  Object encode() {
    return <Object?>[
      appName,
      tenantId,
    ];
  }

  static PigeonFirebaseApp decode(Object result) {
    result as List<Object?>;
    return PigeonFirebaseApp(
      appName: result[0]! as String,
      tenantId: result[1] as String?,
    );
  }
}

class PigeonActionCodeInfo {
  PigeonActionCodeInfo({
    required this.operation,
    required this.data,
  });

  ActionCodeInfoOperation operation;

  PigeonActionCodeInfoData data;

  Object encode() {
    return <Object?>[
      operation.index,
      data.encode(),
    ];
  }

  static PigeonActionCodeInfo decode(Object result) {
    result as List<Object?>;
    return PigeonActionCodeInfo(
      operation: ActionCodeInfoOperation.values[result[0]! as int],
      data: PigeonActionCodeInfoData.decode(result[1]! as List<Object?>),
    );
  }
}

class PigeonActionCodeInfoData {
  PigeonActionCodeInfoData({
    this.email,
    this.previousEmail,
  });

  String? email;

  String? previousEmail;

  Object encode() {
    return <Object?>[
      email,
      previousEmail,
    ];
  }

  static PigeonActionCodeInfoData decode(Object result) {
    result as List<Object?>;
    return PigeonActionCodeInfoData(
      email: result[0] as String?,
      previousEmail: result[1] as String?,
    );
  }
}

class PigeonUserCredential {
  PigeonUserCredential({
    this.user,
    this.additionalUserInfo,
    this.credential,
  });

  PigeonUserDetails? user;

  PigeonAdditionalUserInfo? additionalUserInfo;

  PigeonAuthCredential? credential;

  Object encode() {
    return <Object?>[
      user?.encode(),
      additionalUserInfo?.encode(),
      credential?.encode(),
    ];
  }

  static PigeonUserCredential decode(Object result) {
    result as List<Object?>;
    return PigeonUserCredential(
      user: result[0] != null
          ? PigeonUserDetails.decode(result[0]! as List<Object?>)
          : null,
      additionalUserInfo: result[1] != null
          ? PigeonAdditionalUserInfo.decode(result[1]! as List<Object?>)
          : null,
      credential: result[2] != null
          ? PigeonAuthCredential.decode(result[2]! as List<Object?>)
          : null,
    );
  }
}

class PigeonAdditionalUserInfo {
  PigeonAdditionalUserInfo({
    required this.isNewUser,
    this.providerId,
    this.username,
    this.profile,
  });

  bool isNewUser;

  String? providerId;

  String? username;

  Map<String?, Object?>? profile;

  Object encode() {
    return <Object?>[
      isNewUser,
      providerId,
      username,
      profile,
    ];
  }

  static PigeonAdditionalUserInfo decode(Object result) {
    result as List<Object?>;
    return PigeonAdditionalUserInfo(
      isNewUser: result[0]! as bool,
      providerId: result[1] as String?,
      username: result[2] as String?,
      profile: (result[3] as Map<Object?, Object?>?)?.cast<String?, Object?>(),
    );
  }
}

class PigeonAuthCredential {
  PigeonAuthCredential({
    required this.providerId,
    required this.signInMethod,
    required this.nativeId,
    this.accessToken,
  });

  String providerId;

  String signInMethod;

  int nativeId;

  String? accessToken;

  Object encode() {
    return <Object?>[
      providerId,
      signInMethod,
      nativeId,
      accessToken,
    ];
  }

  static PigeonAuthCredential decode(Object result) {
    result as List<Object?>;
    return PigeonAuthCredential(
      providerId: result[0]! as String,
      signInMethod: result[1]! as String,
      nativeId: result[2]! as int,
      accessToken: result[3] as String?,
    );
  }
}

class PigeonUserInfo {
  PigeonUserInfo({
    required this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
    this.phoneNumber,
    required this.isAnonymous,
    required this.isEmailVerified,
    this.providerId,
    this.tenantId,
    this.refreshToken,
    this.creationTimestamp,
    this.lastSignInTimestamp,
  });

  String uid;

  String? email;

  String? displayName;

  String? photoUrl;

  String? phoneNumber;

  bool isAnonymous;

  bool isEmailVerified;

  String? providerId;

  String? tenantId;

  String? refreshToken;

  int? creationTimestamp;

  int? lastSignInTimestamp;

  Object encode() {
    return <Object?>[
      uid,
      email,
      displayName,
      photoUrl,
      phoneNumber,
      isAnonymous,
      isEmailVerified,
      providerId,
      tenantId,
      refreshToken,
      creationTimestamp,
      lastSignInTimestamp,
    ];
  }

  static PigeonUserInfo decode(Object result) {
    result as List<Object?>;
    return PigeonUserInfo(
      uid: result[0]! as String,
      email: result[1] as String?,
      displayName: result[2] as String?,
      photoUrl: result[3] as String?,
      phoneNumber: result[4] as String?,
      isAnonymous: result[5]! as bool,
      isEmailVerified: result[6]! as bool,
      providerId: result[7] as String?,
      tenantId: result[8] as String?,
      refreshToken: result[9] as String?,
      creationTimestamp: result[10] as int?,
      lastSignInTimestamp: result[11] as int?,
    );
  }
}

class PigeonUserDetails {
  PigeonUserDetails({
    required this.userInfo,
    required this.providerData,
  });

  PigeonUserInfo userInfo;

  List<PigeonUserInfo?> providerData;

  Object encode() {
    return <Object?>[
      userInfo.encode(),
      providerData,
    ];
  }

  static PigeonUserDetails decode(Object result) {
    result as List<Object?>;
    return PigeonUserDetails(
      userInfo: PigeonUserInfo.decode(result[0]! as List<Object?>),
      providerData: (result[1] as List<Object?>?)!.cast<PigeonUserInfo?>(),
    );
  }
}

class _FirebaseAuthHostApiCodec extends StandardMessageCodec {
  const _FirebaseAuthHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonActionCodeInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonActionCodeInfoData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAdditionalUserInfo) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAuthCredential) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserCredential) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserDetails) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserInfo) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonActionCodeInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonActionCodeInfoData.decode(readValue(buffer)!);
      case 130:
        return PigeonAdditionalUserInfo.decode(readValue(buffer)!);
      case 131:
        return PigeonAuthCredential.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 134:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 135:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      case 136:
        return PigeonUserCredential.decode(readValue(buffer)!);
      case 137:
        return PigeonUserDetails.decode(readValue(buffer)!);
      case 138:
        return PigeonUserInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class FirebaseAuthHostApi {
  /// Constructor for [FirebaseAuthHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  FirebaseAuthHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _FirebaseAuthHostApiCodec();

  Future<String> registerIdTokenListener(PigeonFirebaseApp arg_app) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.registerIdTokenListener', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<String> registerAuthStateListener(PigeonFirebaseApp arg_app) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.registerAuthStateListener',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as String?)!;
    }
  }

  Future<void> useEmulator(
      PigeonFirebaseApp arg_app, String arg_host, int arg_port) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.useEmulator', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_host, arg_port]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> applyActionCode(
      PigeonFirebaseApp arg_app, String arg_code) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.applyActionCode', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_code]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<PigeonActionCodeInfo> checkActionCode(
      PigeonFirebaseApp arg_app, String arg_code) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.checkActionCode', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_code]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonActionCodeInfo?)!;
    }
  }

  Future<void> confirmPasswordReset(PigeonFirebaseApp arg_app, String arg_code,
      String arg_newPassword) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.confirmPasswordReset', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_code, arg_newPassword]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<PigeonUserCredential> createUserWithEmailAndPassword(
      PigeonFirebaseApp arg_app, String arg_email, String arg_password) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.createUserWithEmailAndPassword',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_app, arg_email, arg_password]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonUserCredential?)!;
    }
  }

  Future<PigeonUserCredential> signInAnonymously(
      PigeonFirebaseApp arg_app) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.signInAnonymously', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonUserCredential?)!;
    }
  }

  Future<PigeonUserCredential> signInWithCredential(
      PigeonFirebaseApp arg_app, Map<String?, Object?> arg_input) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.FirebaseAuthHostApi.signInWithCredential', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_app, arg_input]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonUserCredential?)!;
    }
  }
}

class _MultiFactorUserHostApiCodec extends StandardMessageCodec {
  const _MultiFactorUserHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 130:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class MultiFactorUserHostApi {
  /// Constructor for [MultiFactorUserHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  MultiFactorUserHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _MultiFactorUserHostApiCodec();

  Future<void> enrollPhone(
      String arg_appName,
      PigeonPhoneMultiFactorAssertion arg_assertion,
      String? arg_displayName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MultiFactorUserHostApi.enrollPhone', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
            .send(<Object?>[arg_appName, arg_assertion, arg_displayName])
        as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<PigeonMultiFactorSession> getSession(String arg_appName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MultiFactorUserHostApi.getSession', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_appName]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PigeonMultiFactorSession?)!;
    }
  }

  Future<void> unenroll(String arg_appName, String? arg_factorUid) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MultiFactorUserHostApi.unenroll', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_appName, arg_factorUid]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<List<PigeonMultiFactorInfo?>> getEnrolledFactors(
      String arg_appName) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MultiFactorUserHostApi.getEnrolledFactors', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_appName]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as List<Object?>?)!.cast<PigeonMultiFactorInfo?>();
    }
  }
}

class _MultiFactoResolverHostApiCodec extends StandardMessageCodec {
  const _MultiFactoResolverHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonActionCodeInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonActionCodeInfoData) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAdditionalUserInfo) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PigeonAuthCredential) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PigeonFirebaseApp) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PigeonMultiFactorSession) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is PigeonPhoneMultiFactorAssertion) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserCredential) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserDetails) {
      buffer.putUint8(137);
      writeValue(buffer, value.encode());
    } else if (value is PigeonUserInfo) {
      buffer.putUint8(138);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonActionCodeInfo.decode(readValue(buffer)!);
      case 129:
        return PigeonActionCodeInfoData.decode(readValue(buffer)!);
      case 130:
        return PigeonAdditionalUserInfo.decode(readValue(buffer)!);
      case 131:
        return PigeonAuthCredential.decode(readValue(buffer)!);
      case 132:
        return PigeonFirebaseApp.decode(readValue(buffer)!);
      case 133:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      case 134:
        return PigeonMultiFactorSession.decode(readValue(buffer)!);
      case 135:
        return PigeonPhoneMultiFactorAssertion.decode(readValue(buffer)!);
      case 136:
        return PigeonUserCredential.decode(readValue(buffer)!);
      case 137:
        return PigeonUserDetails.decode(readValue(buffer)!);
      case 138:
        return PigeonUserInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class MultiFactoResolverHostApi {
  /// Constructor for [MultiFactoResolverHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  MultiFactoResolverHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _MultiFactoResolverHostApiCodec();

  Future<Map<String?, Object?>> resolveSignIn(String arg_resolverId,
      PigeonPhoneMultiFactorAssertion arg_assertion) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.MultiFactoResolverHostApi.resolveSignIn', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_resolverId, arg_assertion]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)!.cast<String?, Object?>();
    }
  }
}

class _GenerateInterfacesCodec extends StandardMessageCodec {
  const _GenerateInterfacesCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonMultiFactorInfo) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return PigeonMultiFactorInfo.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

/// Only used to generate the object interface that are use outside of the Pigeon interface
class GenerateInterfaces {
  /// Constructor for [GenerateInterfaces].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  GenerateInterfaces({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _GenerateInterfacesCodec();

  Future<void> generateInterfaces(PigeonMultiFactorInfo arg_info) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.GenerateInterfaces.generateInterfaces', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_info]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

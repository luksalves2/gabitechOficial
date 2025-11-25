// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PegarChatsStruct extends BaseStruct {
  PegarChatsStruct({
    String? pinned,
    String? messagesUnread,
    String? unread,
    String? lastMessageTime,
    bool? isGroupAnnouncement,
    String? archived,
    String? phone,
    String? name,
    bool? isGroup,
    String? isMuted,
    String? isMarkedSpam,
  })  : _pinned = pinned,
        _messagesUnread = messagesUnread,
        _unread = unread,
        _lastMessageTime = lastMessageTime,
        _isGroupAnnouncement = isGroupAnnouncement,
        _archived = archived,
        _phone = phone,
        _name = name,
        _isGroup = isGroup,
        _isMuted = isMuted,
        _isMarkedSpam = isMarkedSpam;

  // "pinned" field.
  String? _pinned;
  String get pinned => _pinned ?? '';
  set pinned(String? val) => _pinned = val;

  bool hasPinned() => _pinned != null;

  // "messagesUnread" field.
  String? _messagesUnread;
  String get messagesUnread => _messagesUnread ?? '';
  set messagesUnread(String? val) => _messagesUnread = val;

  bool hasMessagesUnread() => _messagesUnread != null;

  // "unread" field.
  String? _unread;
  String get unread => _unread ?? '';
  set unread(String? val) => _unread = val;

  bool hasUnread() => _unread != null;

  // "lastMessageTime" field.
  String? _lastMessageTime;
  String get lastMessageTime => _lastMessageTime ?? '';
  set lastMessageTime(String? val) => _lastMessageTime = val;

  bool hasLastMessageTime() => _lastMessageTime != null;

  // "isGroupAnnouncement" field.
  bool? _isGroupAnnouncement;
  bool get isGroupAnnouncement => _isGroupAnnouncement ?? false;
  set isGroupAnnouncement(bool? val) => _isGroupAnnouncement = val;

  bool hasIsGroupAnnouncement() => _isGroupAnnouncement != null;

  // "archived" field.
  String? _archived;
  String get archived => _archived ?? '';
  set archived(String? val) => _archived = val;

  bool hasArchived() => _archived != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "isGroup" field.
  bool? _isGroup;
  bool get isGroup => _isGroup ?? false;
  set isGroup(bool? val) => _isGroup = val;

  bool hasIsGroup() => _isGroup != null;

  // "isMuted" field.
  String? _isMuted;
  String get isMuted => _isMuted ?? '';
  set isMuted(String? val) => _isMuted = val;

  bool hasIsMuted() => _isMuted != null;

  // "isMarkedSpam" field.
  String? _isMarkedSpam;
  String get isMarkedSpam => _isMarkedSpam ?? '';
  set isMarkedSpam(String? val) => _isMarkedSpam = val;

  bool hasIsMarkedSpam() => _isMarkedSpam != null;

  static PegarChatsStruct fromMap(Map<String, dynamic> data) =>
      PegarChatsStruct(
        pinned: data['pinned'] as String?,
        messagesUnread: data['messagesUnread'] as String?,
        unread: data['unread'] as String?,
        lastMessageTime: data['lastMessageTime'] as String?,
        isGroupAnnouncement: data['isGroupAnnouncement'] as bool?,
        archived: data['archived'] as String?,
        phone: data['phone'] as String?,
        name: data['name'] as String?,
        isGroup: data['isGroup'] as bool?,
        isMuted: data['isMuted'] as String?,
        isMarkedSpam: data['isMarkedSpam'] as String?,
      );

  static PegarChatsStruct? maybeFromMap(dynamic data) => data is Map
      ? PegarChatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pinned': _pinned,
        'messagesUnread': _messagesUnread,
        'unread': _unread,
        'lastMessageTime': _lastMessageTime,
        'isGroupAnnouncement': _isGroupAnnouncement,
        'archived': _archived,
        'phone': _phone,
        'name': _name,
        'isGroup': _isGroup,
        'isMuted': _isMuted,
        'isMarkedSpam': _isMarkedSpam,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pinned': serializeParam(
          _pinned,
          ParamType.String,
        ),
        'messagesUnread': serializeParam(
          _messagesUnread,
          ParamType.String,
        ),
        'unread': serializeParam(
          _unread,
          ParamType.String,
        ),
        'lastMessageTime': serializeParam(
          _lastMessageTime,
          ParamType.String,
        ),
        'isGroupAnnouncement': serializeParam(
          _isGroupAnnouncement,
          ParamType.bool,
        ),
        'archived': serializeParam(
          _archived,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'isGroup': serializeParam(
          _isGroup,
          ParamType.bool,
        ),
        'isMuted': serializeParam(
          _isMuted,
          ParamType.String,
        ),
        'isMarkedSpam': serializeParam(
          _isMarkedSpam,
          ParamType.String,
        ),
      }.withoutNulls;

  static PegarChatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PegarChatsStruct(
        pinned: deserializeParam(
          data['pinned'],
          ParamType.String,
          false,
        ),
        messagesUnread: deserializeParam(
          data['messagesUnread'],
          ParamType.String,
          false,
        ),
        unread: deserializeParam(
          data['unread'],
          ParamType.String,
          false,
        ),
        lastMessageTime: deserializeParam(
          data['lastMessageTime'],
          ParamType.String,
          false,
        ),
        isGroupAnnouncement: deserializeParam(
          data['isGroupAnnouncement'],
          ParamType.bool,
          false,
        ),
        archived: deserializeParam(
          data['archived'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        isGroup: deserializeParam(
          data['isGroup'],
          ParamType.bool,
          false,
        ),
        isMuted: deserializeParam(
          data['isMuted'],
          ParamType.String,
          false,
        ),
        isMarkedSpam: deserializeParam(
          data['isMarkedSpam'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PegarChatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PegarChatsStruct &&
        pinned == other.pinned &&
        messagesUnread == other.messagesUnread &&
        unread == other.unread &&
        lastMessageTime == other.lastMessageTime &&
        isGroupAnnouncement == other.isGroupAnnouncement &&
        archived == other.archived &&
        phone == other.phone &&
        name == other.name &&
        isGroup == other.isGroup &&
        isMuted == other.isMuted &&
        isMarkedSpam == other.isMarkedSpam;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pinned,
        messagesUnread,
        unread,
        lastMessageTime,
        isGroupAnnouncement,
        archived,
        phone,
        name,
        isGroup,
        isMuted,
        isMarkedSpam
      ]);
}

PegarChatsStruct createPegarChatsStruct({
  String? pinned,
  String? messagesUnread,
  String? unread,
  String? lastMessageTime,
  bool? isGroupAnnouncement,
  String? archived,
  String? phone,
  String? name,
  bool? isGroup,
  String? isMuted,
  String? isMarkedSpam,
}) =>
    PegarChatsStruct(
      pinned: pinned,
      messagesUnread: messagesUnread,
      unread: unread,
      lastMessageTime: lastMessageTime,
      isGroupAnnouncement: isGroupAnnouncement,
      archived: archived,
      phone: phone,
      name: name,
      isGroup: isGroup,
      isMuted: isMuted,
      isMarkedSpam: isMarkedSpam,
    );

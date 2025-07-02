enum TimeFormat { militartFormat, amPmFormat }

enum AppTheme { light, dark }

enum WorkingStatus { fullTime, partTime }

enum Gender { male, female }

enum PlaceType { restaurant, cafe }

enum ItemListMode { gridView, listView }

enum DataType { img, video, pdf, doc, link }

enum TimeInterval { fifteen, thirty, oneHour }

enum ChatType { public, direct, group, position, place }

enum DateRangeType { multipleDates, rangedDate }

enum DateSelectionMode { weekly, multiple, rangedMonth, single }

enum DocumentStatus {
  onSubmit,
  onReview,
  onHold,
  onRejected,
  onConfirmed,
  onCancel,
  onExpired,
}

enum MessageType {
  textMessage,
  imageMessage,
  fileMessage,
  videoMessage,
  messageReaction,
  tagMessage,
  leavChatRoomMessage,
  replyMessage,
  leaveChatRoomMessage,
}

enum ReactionType {
  likes,
  sadness,
  happiness,
  fear,
  anger,
  surprise,
  disgust,
  amazed,
}

enum ErrorCode {
  internalServerError,
  httpServerError,

  entityAlreadyExistsError,
  entityNotExists,

  sessionExpired,

  inactiveUser,

  unknownError,
  resourceConflict,
  injection,
}

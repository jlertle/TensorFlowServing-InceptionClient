// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/util/event.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class LogMessage;
@class SessionLog;
@class Summary;
@class TaggedRunMetadata;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum LogMessage_Level

typedef GPB_ENUM(LogMessage_Level) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  LogMessage_Level_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  LogMessage_Level_Unknown = 0,

  /**
   * Note: The logging level 10 cannot be named DEBUG. Some software
   * projects compile their C/C++ code with -DDEBUG in debug builds. So the
   * C++ code generated from this file should not have an identifier named
   * DEBUG.
   **/
  LogMessage_Level_Debugging = 10,
  LogMessage_Level_Info = 20,
  LogMessage_Level_Warn = 30,
  LogMessage_Level_Error = 40,
  LogMessage_Level_Fatal = 50,
};

GPBEnumDescriptor *LogMessage_Level_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL LogMessage_Level_IsValidValue(int32_t value);

#pragma mark - Enum SessionLog_SessionStatus

typedef GPB_ENUM(SessionLog_SessionStatus) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  SessionLog_SessionStatus_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  SessionLog_SessionStatus_StatusUnspecified = 0,
  SessionLog_SessionStatus_Start = 1,
  SessionLog_SessionStatus_Stop = 2,
  SessionLog_SessionStatus_Checkpoint = 3,
};

GPBEnumDescriptor *SessionLog_SessionStatus_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL SessionLog_SessionStatus_IsValidValue(int32_t value);

#pragma mark - EventRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface EventRoot : GPBRootObject
@end

#pragma mark - Event

typedef GPB_ENUM(Event_FieldNumber) {
  Event_FieldNumber_WallTime = 1,
  Event_FieldNumber_Step = 2,
  Event_FieldNumber_FileVersion = 3,
  Event_FieldNumber_GraphDef = 4,
  Event_FieldNumber_Summary = 5,
  Event_FieldNumber_LogMessage = 6,
  Event_FieldNumber_SessionLog = 7,
  Event_FieldNumber_TaggedRunMetadata = 8,
  Event_FieldNumber_MetaGraphDef = 9,
};

typedef GPB_ENUM(Event_What_OneOfCase) {
  Event_What_OneOfCase_GPBUnsetOneOfCase = 0,
  Event_What_OneOfCase_FileVersion = 3,
  Event_What_OneOfCase_GraphDef = 4,
  Event_What_OneOfCase_Summary = 5,
  Event_What_OneOfCase_LogMessage = 6,
  Event_What_OneOfCase_SessionLog = 7,
  Event_What_OneOfCase_TaggedRunMetadata = 8,
  Event_What_OneOfCase_MetaGraphDef = 9,
};

/**
 * Protocol buffer representing an event that happened during
 * the execution of a Brain model.
 **/
@interface Event : GPBMessage

/** Timestamp of the event. */
@property(nonatomic, readwrite) double wallTime;

/** Global step of the event. */
@property(nonatomic, readwrite) int64_t step;

@property(nonatomic, readonly) Event_What_OneOfCase whatOneOfCase;

/**
 * An event file was started, with the specified version.
 * This is use to identify the contents of the record IO files
 * easily.  Current version is "brain.Event:2".  All versions
 * start with "brain.Event:".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *fileVersion;

/** An encoded version of a GraphDef. */
@property(nonatomic, readwrite, copy, null_resettable) NSData *graphDef;

/** A summary was generated. */
@property(nonatomic, readwrite, strong, null_resettable) Summary *summary;

/**
 * The user output a log message. Not all messages are logged, only ones
 * generated via the Python tensorboard_logging module.
 **/
@property(nonatomic, readwrite, strong, null_resettable) LogMessage *logMessage;

/** The state of the session which can be used for restarting after crashes. */
@property(nonatomic, readwrite, strong, null_resettable) SessionLog *sessionLog;

/** The metadata returned by running a session.run() call. */
@property(nonatomic, readwrite, strong, null_resettable) TaggedRunMetadata *taggedRunMetadata;

/** An encoded version of a MetaGraphDef. */
@property(nonatomic, readwrite, copy, null_resettable) NSData *metaGraphDef;

@end

/**
 * Clears whatever value was set for the oneof 'what'.
 **/
void Event_ClearWhatOneOfCase(Event *message);

#pragma mark - LogMessage

typedef GPB_ENUM(LogMessage_FieldNumber) {
  LogMessage_FieldNumber_Level = 1,
  LogMessage_FieldNumber_Message = 2,
};

/**
 * Protocol buffer used for logging messages to the events file.
 **/
@interface LogMessage : GPBMessage

@property(nonatomic, readwrite) LogMessage_Level level;

@property(nonatomic, readwrite, copy, null_resettable) NSString *message;

@end

/**
 * Fetches the raw value of a @c LogMessage's @c level property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t LogMessage_Level_RawValue(LogMessage *message);
/**
 * Sets the raw value of an @c LogMessage's @c level property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetLogMessage_Level_RawValue(LogMessage *message, int32_t value);

#pragma mark - SessionLog

typedef GPB_ENUM(SessionLog_FieldNumber) {
  SessionLog_FieldNumber_Status = 1,
  SessionLog_FieldNumber_CheckpointPath = 2,
  SessionLog_FieldNumber_Msg = 3,
};

/**
 * Protocol buffer used for logging session state.
 **/
@interface SessionLog : GPBMessage

@property(nonatomic, readwrite) SessionLog_SessionStatus status;

/** This checkpoint_path contains both the path and filename. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *checkpointPath;

@property(nonatomic, readwrite, copy, null_resettable) NSString *msg;

@end

/**
 * Fetches the raw value of a @c SessionLog's @c status property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t SessionLog_Status_RawValue(SessionLog *message);
/**
 * Sets the raw value of an @c SessionLog's @c status property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetSessionLog_Status_RawValue(SessionLog *message, int32_t value);

#pragma mark - TaggedRunMetadata

typedef GPB_ENUM(TaggedRunMetadata_FieldNumber) {
  TaggedRunMetadata_FieldNumber_Tag = 1,
  TaggedRunMetadata_FieldNumber_RunMetadata = 2,
};

/**
 * For logging the metadata output for a single session.run() call.
 **/
@interface TaggedRunMetadata : GPBMessage

/** Tag name associated with this metadata. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *tag;

/**
 * Byte-encoded version of the `RunMetadata` proto in order to allow lazy
 * deserialization.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *runMetadata;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

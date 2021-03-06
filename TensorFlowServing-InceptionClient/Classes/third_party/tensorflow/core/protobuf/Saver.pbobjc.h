// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/saver.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum SaverDef_CheckpointFormatVersion

/**
 * A version number that identifies a different on-disk checkpoint format.
 * Usually, each subclass of BaseSaverBuilder works with a particular
 * version/format.  However, it is possible that the same builder may be
 * upgraded to support a newer checkpoint format in the future.
 **/
typedef GPB_ENUM(SaverDef_CheckpointFormatVersion) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  SaverDef_CheckpointFormatVersion_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Internal legacy format. */
  SaverDef_CheckpointFormatVersion_Legacy = 0,

  /** Current format: tf.Saver() which works with tensorflow::table::Table. */
  SaverDef_CheckpointFormatVersion_V1 = 1,

  /** Experimental format under development. */
  SaverDef_CheckpointFormatVersion_V2 = 2,
};

GPBEnumDescriptor *SaverDef_CheckpointFormatVersion_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL SaverDef_CheckpointFormatVersion_IsValidValue(int32_t value);

#pragma mark - SaverRoot

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
@interface SaverRoot : GPBRootObject
@end

#pragma mark - SaverDef

typedef GPB_ENUM(SaverDef_FieldNumber) {
  SaverDef_FieldNumber_FilenameTensorName = 1,
  SaverDef_FieldNumber_SaveTensorName = 2,
  SaverDef_FieldNumber_RestoreOpName = 3,
  SaverDef_FieldNumber_MaxToKeep = 4,
  SaverDef_FieldNumber_Sharded = 5,
  SaverDef_FieldNumber_KeepCheckpointEveryNHours = 6,
  SaverDef_FieldNumber_Version = 7,
};

/**
 * Protocol buffer representing the configuration of a Saver.
 **/
@interface SaverDef : GPBMessage

/**
 * The name of the tensor in which to specify the filename when saving or
 * restoring a model checkpoint.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *filenameTensorName;

/** The operation to run when saving a model checkpoint. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *saveTensorName;

/** The operation to run when restoring a model checkpoint. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *restoreOpName;

/** Maximum number of checkpoints to keep.  If 0, no checkpoints are deleted. */
@property(nonatomic, readwrite) int32_t maxToKeep;

/** Shard the save files, one per device that has Variable nodes. */
@property(nonatomic, readwrite) BOOL sharded;

/**
 * How often to keep an additional checkpoint. If not specified, only the last
 * "max_to_keep" checkpoints are kept; if specified, in addition to keeping
 * the last "max_to_keep" checkpoints, an additional checkpoint will be kept
 * for every n hours of training.
 **/
@property(nonatomic, readwrite) float keepCheckpointEveryNHours;

@property(nonatomic, readwrite) SaverDef_CheckpointFormatVersion version;

@end

/**
 * Fetches the raw value of a @c SaverDef's @c version property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t SaverDef_Version_RawValue(SaverDef *message);
/**
 * Sets the raw value of an @c SaverDef's @c version property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetSaverDef_Version_RawValue(SaverDef *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

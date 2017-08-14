// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/variable.proto

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

@class SaveSliceInfoDef;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - VariableRoot

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
@interface VariableRoot : GPBRootObject
@end

#pragma mark - VariableDef

typedef GPB_ENUM(VariableDef_FieldNumber) {
  VariableDef_FieldNumber_VariableName = 1,
  VariableDef_FieldNumber_InitializerName = 2,
  VariableDef_FieldNumber_SnapshotName = 3,
  VariableDef_FieldNumber_SaveSliceInfoDef = 4,
  VariableDef_FieldNumber_IsResource = 5,
};

/**
 * Protocol buffer representing a Variable.
 **/
@interface VariableDef : GPBMessage

/** Name of the variable tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *variableName;

/** Name of the initializer op. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *initializerName;

/** Name of the snapshot tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *snapshotName;

/** Support for saving variables as slices of a larger variable. */
@property(nonatomic, readwrite, strong, null_resettable) SaveSliceInfoDef *saveSliceInfoDef;
/** Test to see if @c saveSliceInfoDef has been set. */
@property(nonatomic, readwrite) BOOL hasSaveSliceInfoDef;

/** Whether to represent this as a ResourceVariable. */
@property(nonatomic, readwrite) BOOL isResource;

@end

#pragma mark - SaveSliceInfoDef

typedef GPB_ENUM(SaveSliceInfoDef_FieldNumber) {
  SaveSliceInfoDef_FieldNumber_FullName = 1,
  SaveSliceInfoDef_FieldNumber_FullShapeArray = 2,
  SaveSliceInfoDef_FieldNumber_VarOffsetArray = 3,
  SaveSliceInfoDef_FieldNumber_VarShapeArray = 4,
};

@interface SaveSliceInfoDef : GPBMessage

/** Name of the full variable of which this is a slice. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *fullName;

/** Shape of the full variable. */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *fullShapeArray;
/** The number of items in @c fullShapeArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger fullShapeArray_Count;

/** Offset of this variable into the full variable. */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *varOffsetArray;
/** The number of items in @c varOffsetArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger varOffsetArray_Count;

/** Shape of this variable. */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *varShapeArray;
/** The number of items in @c varShapeArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger varShapeArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/saver.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "tensorflow/core/protobuf/Saver.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - SaverRoot

@implementation SaverRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - SaverRoot_FileDescriptor

static GPBFileDescriptor *SaverRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tensorflow"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - SaverDef

@implementation SaverDef

@dynamic filenameTensorName;
@dynamic saveTensorName;
@dynamic restoreOpName;
@dynamic maxToKeep;
@dynamic sharded;
@dynamic keepCheckpointEveryNHours;
@dynamic version;

typedef struct SaverDef__storage_ {
  uint32_t _has_storage_[1];
  int32_t maxToKeep;
  float keepCheckpointEveryNHours;
  SaverDef_CheckpointFormatVersion version;
  NSString *filenameTensorName;
  NSString *saveTensorName;
  NSString *restoreOpName;
} SaverDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "filenameTensorName",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_FilenameTensorName,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SaverDef__storage_, filenameTensorName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "saveTensorName",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_SaveTensorName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SaverDef__storage_, saveTensorName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "restoreOpName",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_RestoreOpName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SaverDef__storage_, restoreOpName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "maxToKeep",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_MaxToKeep,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(SaverDef__storage_, maxToKeep),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "sharded",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_Sharded,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "keepCheckpointEveryNHours",
        .dataTypeSpecific.className = NULL,
        .number = SaverDef_FieldNumber_KeepCheckpointEveryNHours,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(SaverDef__storage_, keepCheckpointEveryNHours),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "version",
        .dataTypeSpecific.enumDescFunc = SaverDef_CheckpointFormatVersion_EnumDescriptor,
        .number = SaverDef_FieldNumber_Version,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(SaverDef__storage_, version),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SaverDef class]
                                     rootClass:[SaverRoot class]
                                          file:SaverRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SaverDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t SaverDef_Version_RawValue(SaverDef *message) {
  GPBDescriptor *descriptor = [SaverDef descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SaverDef_FieldNumber_Version];
  return GPBGetMessageInt32Field(message, field);
}

void SetSaverDef_Version_RawValue(SaverDef *message, int32_t value) {
  GPBDescriptor *descriptor = [SaverDef descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SaverDef_FieldNumber_Version];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum SaverDef_CheckpointFormatVersion

GPBEnumDescriptor *SaverDef_CheckpointFormatVersion_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Legacy\000V1\000V2\000";
    static const int32_t values[] = {
        SaverDef_CheckpointFormatVersion_Legacy,
        SaverDef_CheckpointFormatVersion_V1,
        SaverDef_CheckpointFormatVersion_V2,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(SaverDef_CheckpointFormatVersion)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:SaverDef_CheckpointFormatVersion_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL SaverDef_CheckpointFormatVersion_IsValidValue(int32_t value__) {
  switch (value__) {
    case SaverDef_CheckpointFormatVersion_Legacy:
    case SaverDef_CheckpointFormatVersion_V1:
    case SaverDef_CheckpointFormatVersion_V2:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/util/memmapped_file_system.proto

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

 #import "tensorflow/core/util/MemmappedFileSystem.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - MemmappedFileSystemRoot

@implementation MemmappedFileSystemRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - MemmappedFileSystemRoot_FileDescriptor

static GPBFileDescriptor *MemmappedFileSystemRoot_FileDescriptor(void) {
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

#pragma mark - MemmappedFileSystemDirectoryElement

@implementation MemmappedFileSystemDirectoryElement

@dynamic offset;
@dynamic name;

typedef struct MemmappedFileSystemDirectoryElement__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  uint64_t offset;
} MemmappedFileSystemDirectoryElement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "offset",
        .dataTypeSpecific.className = NULL,
        .number = MemmappedFileSystemDirectoryElement_FieldNumber_Offset,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(MemmappedFileSystemDirectoryElement__storage_, offset),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = MemmappedFileSystemDirectoryElement_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(MemmappedFileSystemDirectoryElement__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemmappedFileSystemDirectoryElement class]
                                     rootClass:[MemmappedFileSystemRoot class]
                                          file:MemmappedFileSystemRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemmappedFileSystemDirectoryElement__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - MemmappedFileSystemDirectory

@implementation MemmappedFileSystemDirectory

@dynamic elementArray, elementArray_Count;

typedef struct MemmappedFileSystemDirectory__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *elementArray;
} MemmappedFileSystemDirectory__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "elementArray",
        .dataTypeSpecific.className = GPBStringifySymbol(MemmappedFileSystemDirectoryElement),
        .number = MemmappedFileSystemDirectory_FieldNumber_ElementArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(MemmappedFileSystemDirectory__storage_, elementArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[MemmappedFileSystemDirectory class]
                                     rootClass:[MemmappedFileSystemRoot class]
                                          file:MemmappedFileSystemRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(MemmappedFileSystemDirectory__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/device_attributes.proto

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

 #import "tensorflow/core/framework/DeviceAttributes.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - DeviceAttributesRoot

@implementation DeviceAttributesRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - DeviceAttributesRoot_FileDescriptor

static GPBFileDescriptor *DeviceAttributesRoot_FileDescriptor(void) {
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

#pragma mark - DeviceLocality

@implementation DeviceLocality

@dynamic busId;

typedef struct DeviceLocality__storage_ {
  uint32_t _has_storage_[1];
  int32_t busId;
} DeviceLocality__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "busId",
        .dataTypeSpecific.className = NULL,
        .number = DeviceLocality_FieldNumber_BusId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeviceLocality__storage_, busId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeviceLocality class]
                                     rootClass:[DeviceAttributesRoot class]
                                          file:DeviceAttributesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeviceLocality__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DeviceAttributes

@implementation DeviceAttributes

@dynamic name;
@dynamic deviceType;
@dynamic memoryLimit;
@dynamic hasLocality, locality;
@dynamic incarnation;
@dynamic physicalDeviceDesc;

typedef struct DeviceAttributes__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSString *deviceType;
  DeviceLocality *locality;
  NSString *physicalDeviceDesc;
  int64_t memoryLimit;
  uint64_t incarnation;
} DeviceAttributes__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = DeviceAttributes_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "deviceType",
        .dataTypeSpecific.className = NULL,
        .number = DeviceAttributes_FieldNumber_DeviceType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, deviceType),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "memoryLimit",
        .dataTypeSpecific.className = NULL,
        .number = DeviceAttributes_FieldNumber_MemoryLimit,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, memoryLimit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "locality",
        .dataTypeSpecific.className = GPBStringifySymbol(DeviceLocality),
        .number = DeviceAttributes_FieldNumber_Locality,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, locality),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "incarnation",
        .dataTypeSpecific.className = NULL,
        .number = DeviceAttributes_FieldNumber_Incarnation,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, incarnation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFixed64,
      },
      {
        .name = "physicalDeviceDesc",
        .dataTypeSpecific.className = NULL,
        .number = DeviceAttributes_FieldNumber_PhysicalDeviceDesc,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(DeviceAttributes__storage_, physicalDeviceDesc),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeviceAttributes class]
                                     rootClass:[DeviceAttributesRoot class]
                                          file:DeviceAttributesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeviceAttributes__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

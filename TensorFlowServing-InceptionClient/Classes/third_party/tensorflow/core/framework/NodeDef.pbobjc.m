// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/node_def.proto

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

 #import "tensorflow/core/framework/NodeDef.pbobjc.h"
 #import "tensorflow/core/framework/AttrValue.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - NodeDefRoot

@implementation NodeDefRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - NodeDefRoot_FileDescriptor

static GPBFileDescriptor *NodeDefRoot_FileDescriptor(void) {
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

#pragma mark - NodeDef

@implementation NodeDef

@dynamic name;
@dynamic op;
@dynamic inputArray, inputArray_Count;
@dynamic device;
@dynamic attr, attr_Count;

typedef struct NodeDef__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
  NSString *op;
  NSMutableArray *inputArray;
  NSString *device;
  NSMutableDictionary *attr;
} NodeDef__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = NodeDef_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(NodeDef__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "op",
        .dataTypeSpecific.className = NULL,
        .number = NodeDef_FieldNumber_Op,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(NodeDef__storage_, op),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "inputArray",
        .dataTypeSpecific.className = NULL,
        .number = NodeDef_FieldNumber_InputArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(NodeDef__storage_, inputArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "device",
        .dataTypeSpecific.className = NULL,
        .number = NodeDef_FieldNumber_Device,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(NodeDef__storage_, device),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "attr",
        .dataTypeSpecific.className = GPBStringifySymbol(AttrValue),
        .number = NodeDef_FieldNumber_Attr,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(NodeDef__storage_, attr),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[NodeDef class]
                                     rootClass:[NodeDefRoot class]
                                          file:NodeDefRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(NodeDef__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)

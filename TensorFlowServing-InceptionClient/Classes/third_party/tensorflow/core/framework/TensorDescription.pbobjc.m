// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/tensor_description.proto

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

 #import "tensorflow/core/framework/TensorDescription.pbobjc.h"
 #import "tensorflow/core/framework/Types.pbobjc.h"
 #import "tensorflow/core/framework/TensorShape.pbobjc.h"
 #import "tensorflow/core/framework/AllocationDescription.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - TensorDescriptionRoot

@implementation TensorDescriptionRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - TensorDescriptionRoot_FileDescriptor

static GPBFileDescriptor *TensorDescriptionRoot_FileDescriptor(void) {
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

#pragma mark - TensorDescription

@implementation TensorDescription

@dynamic dtype;
@dynamic hasShape, shape;
@dynamic hasAllocationDescription, allocationDescription;

typedef struct TensorDescription__storage_ {
  uint32_t _has_storage_[1];
  DataType dtype;
  TensorShapeProto *shape;
  AllocationDescription *allocationDescription;
} TensorDescription__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "dtype",
        .dataTypeSpecific.enumDescFunc = DataType_EnumDescriptor,
        .number = TensorDescription_FieldNumber_Dtype,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TensorDescription__storage_, dtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "shape",
        .dataTypeSpecific.className = GPBStringifySymbol(TensorShapeProto),
        .number = TensorDescription_FieldNumber_Shape,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TensorDescription__storage_, shape),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "allocationDescription",
        .dataTypeSpecific.className = GPBStringifySymbol(AllocationDescription),
        .number = TensorDescription_FieldNumber_AllocationDescription,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(TensorDescription__storage_, allocationDescription),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TensorDescription class]
                                     rootClass:[TensorDescriptionRoot class]
                                          file:TensorDescriptionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TensorDescription__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t TensorDescription_Dtype_RawValue(TensorDescription *message) {
  GPBDescriptor *descriptor = [TensorDescription descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TensorDescription_FieldNumber_Dtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetTensorDescription_Dtype_RawValue(TensorDescription *message, int32_t value) {
  GPBDescriptor *descriptor = [TensorDescription descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:TensorDescription_FieldNumber_Dtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)